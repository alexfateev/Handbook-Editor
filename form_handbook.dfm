object fmHandbook: TfmHandbook
  Left = 0
  Top = 0
  Caption = 'fmHandbook'
  ClientHeight = 789
  ClientWidth = 1091
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
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
    Width = 1091
    Height = 28
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Padding.Left = 2
    Padding.Top = 1
    Padding.Right = 2
    Padding.Bottom = 1
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      Left = 35
      Top = 1
      Width = 117
      Alignment = taLeftJustify
      DropDownMenu = pmUnitInsert
      ImageIndex = 0
      Images = ImageList16
      ShowCaption = True
      UseToolbarShowCaption = False
      ToolStyle = tsDropDown
      Align = alLeft
      Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      ExplicitLeft = 60
    end
    object RzToolButton2: TRzToolButton
      Left = 210
      Top = 1
      Width = 107
      Alignment = taLeftJustify
      Images = ImageList16
      ShowCaption = True
      UseToolbarShowCaption = False
      Action = Action5
      Align = alLeft
      ExplicitLeft = 305
      ExplicitTop = -3
    end
    object RzSpacer1: TRzSpacer
      Left = 202
      Top = 1
      Grooved = True
      Align = alLeft
      ExplicitLeft = 296
      ExplicitTop = 8
    end
    object RzToolButton3: TRzToolButton
      Left = 152
      Top = 1
      Images = ImageList16
      ShowCaption = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Action = Action3
      Align = alLeft
      ExplicitLeft = 98
    end
    object RzToolButton4: TRzToolButton
      Left = 177
      Top = 1
      Images = ImageList16
      ShowCaption = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Action = Action4
      Align = alLeft
      ExplicitLeft = 2
    end
    object RzToolButton5: TRzToolButton
      Left = 342
      Top = 1
      Images = ImageList16
      ShowCaption = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Action = Action7
      Align = alLeft
      ExplicitLeft = 434
      ExplicitTop = -3
    end
    object RzToolButton6: TRzToolButton
      Left = 317
      Top = 1
      Images = ImageList16
      ShowCaption = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Action = Action6
      Align = alLeft
      ExplicitLeft = 409
      ExplicitTop = -3
    end
    object RzSpacer2: TRzSpacer
      Left = 392
      Top = 1
      Grooved = True
      Align = alLeft
      ExplicitLeft = 451
      ExplicitTop = -3
    end
    object RzToolButton8: TRzToolButton
      Left = 2
      Top = 1
      Images = ImageList16
      ShowCaption = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Action = Action9
      Align = alLeft
      ExplicitLeft = 0
    end
    object RzSpacer3: TRzSpacer
      Left = 27
      Top = 1
      Grooved = True
      Align = alLeft
      ExplicitLeft = 52
      ExplicitTop = 3
    end
    object RzToolButton7: TRzToolButton
      Left = 1050
      Top = 1
      Width = 39
      DropDownMenu = pmContactColumn
      ImageIndex = 8
      Images = ImageList16
      ToolStyle = tsDropDown
      Align = alRight
      ExplicitLeft = 1064
    end
    object RzToolButton9: TRzToolButton
      Left = 400
      Top = 1
      Width = 82
      Alignment = taLeftJustify
      DropDownMenu = pmFilter
      ImageIndex = 10
      Images = ImageList16
      ShowCaption = True
      UseToolbarShowCaption = False
      ToolStyle = tsDropDown
      Align = alLeft
      Caption = #1060#1080#1083#1100#1090#1088
      ExplicitLeft = 375
    end
    object RzToolButton10: TRzToolButton
      Left = 482
      Top = 1
      Width = 92
      Alignment = taLeftJustify
      ImageIndex = 9
      Images = ImageList16
      ShowCaption = True
      UseToolbarShowCaption = False
      ToolStyle = tsDropDown
      Align = alLeft
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      Visible = False
      ExplicitLeft = 457
    end
    object RzToolButton11: TRzToolButton
      Left = 367
      Top = 1
      Images = ImageList16
      ShowCaption = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Action = Action8
      Align = alLeft
      ExplicitLeft = 375
      ExplicitTop = -3
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 770
    Width = 1091
    Height = 19
    ShowSizeGrip = False
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Locked = True
    TabOrder = 1
    object RzFieldStatus1: TRzFieldStatus
      Left = 0
      Top = 0
      Width = 133
      Height = 19
      Align = alLeft
      Visible = False
      FieldLabel = #1042#1089#1077#1075#1086' '#1082#1086#1085#1090#1072#1082#1090#1086#1074':'
      AutoSize = True
      Caption = ''
    end
    object RzFieldStatus2: TRzFieldStatus
      Left = 133
      Top = 0
      Width = 91
      Height = 19
      Align = alLeft
      Visible = False
      FieldLabel = #1042' '#1089#1087#1080#1089#1082#1077':'
      AutoSize = True
      Caption = ''
      ExplicitLeft = 139
      ExplicitTop = 6
    end
  end
  object RzPanel2: TRzPanel
    Left = 271
    Top = 28
    Width = 820
    Height = 499
    Align = alClient
    BorderOuter = fsFlat
    BorderSides = [sdLeft, sdBottom]
    TabOrder = 2
    ExplicitLeft = 214
    ExplicitWidth = 877
    ExplicitHeight = 577
    object DBGridContact: TDBGridEh
      Left = 1
      Top = 0
      Width = 819
      Height = 377
      Align = alClient
      AutoFitColWidths = True
      BorderStyle = bsNone
      DataSource = srcContacts
      DynProps = <>
      IndicatorOptions = [gioShowRecNoEh]
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      PopupMenu = pmContacts
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      ShowHint = True
      TabOrder = 0
      OnApplyFilter = DBGridContactApplyFilter
      OnDblClick = Action6Execute
      OnGetCellParams = DBGridContactGetCellParams
      Columns = <
        item
          Alignment = taCenter
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_is_delete'
          Footers = <>
          ImageList = imgContactDelete
          KeyList.Strings = (
            '1')
          MaxWidth = 30
          MinWidth = 30
          Title.Caption = #1055#1086#1084#1077#1095#1077#1085' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Width = 30
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_name_save'
          Footers = <>
          Title.Caption = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Width = 300
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
          Width = 300
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_date_born'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Width = 80
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_name_f'
          Footers = <>
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_name_i'
          Footers = <>
          Title.Caption = #1048#1084#1103
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_name_o'
          Footers = <>
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_prof'
          Footers = <>
          Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
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
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_tel_work'
          Footers = <>
          Title.Caption = #1056#1072#1073#1086#1095#1080#1081
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_tel_work2'
          Footers = <>
          Title.Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_tel_mobile'
          Footers = <>
          Title.Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cont_tel_fax'
          Footers = <>
          Title.Caption = #1060#1072#1082#1089
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'unit_name_short'
          Footers = <>
          Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1077' ('#1082#1088#1072#1090#1082#1086#1077'.)'
          Title.EndEllipsis = True
          Title.ToolTips = True
          ToolTips = True
          Visible = False
          Width = 120
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object RzPanel3: TRzPanel
      Left = 1
      Top = 377
      Width = 819
      Height = 121
      Align = alBottom
      BorderOuter = fsFlat
      BorderSides = [sdTop]
      TabOrder = 1
      ExplicitTop = 455
      ExplicitWidth = 876
      object RzDBMemo1: TRzDBMemo
        Left = 583
        Top = 1
        Width = 236
        Height = 120
        Margins.Left = 0
        Margins.Right = 0
        Align = alRight
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'cont_note'
        DataSource = srcContacts
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        ReadOnlyColor = clBtnFace
        ExplicitLeft = 640
      end
      object RzPanel4: TRzPanel
        Left = 295
        Top = 1
        Width = 288
        Height = 120
        Align = alRight
        BorderOuter = fsGroove
        BorderSides = [sdLeft, sdRight]
        TabOrder = 1
        ExplicitLeft = 352
        object RzDBStatusPane1: TRzDBStatusPane
          Left = 2
          Top = 20
          Width = 284
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1043#1086#1088#1086#1076#1089#1082#1086#1081':'
          DataField = 'cont_tel_work'
          DataSource = srcContacts
          ExplicitLeft = 64
          ExplicitTop = 24
          ExplicitWidth = 100
        end
        object RzDBStatusPane2: TRzDBStatusPane
          Left = 2
          Top = 40
          Width = 284
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081':'
          DataField = 'cont_tel_work2'
          DataSource = srcContacts
          ExplicitLeft = 10
          ExplicitTop = 72
        end
        object RzDBStatusPane3: TRzDBStatusPane
          Left = 2
          Top = 60
          Width = 284
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1052#1086#1073#1080#1083#1100#1085#1099#1081':'
          DataField = 'cont_tel_mobile'
          DataSource = srcContacts
          ExplicitLeft = 1
          ExplicitTop = 88
        end
        object RzDBStatusPane4: TRzDBStatusPane
          Left = 2
          Top = 80
          Width = 284
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1060#1072#1082#1089':'
          DataField = 'cont_tel_fax'
          DataSource = srcContacts
          ExplicitLeft = 18
          ExplicitTop = 96
        end
        object RzDBStatusPane5: TRzDBStatusPane
          Left = 2
          Top = 0
          Width = 284
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1069#1083'. '#1087#1086#1095#1090#1072':'
          DataField = 'cont_email'
          DataSource = srcContacts
          ExplicitLeft = 64
          ExplicitTop = 24
          ExplicitWidth = 100
        end
        object RzDBStatusPane11: TRzDBStatusPane
          Left = 2
          Top = 100
          Width = 284
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
          DataField = 'cont_date_born'
          DataSource = srcContacts
          ExplicitLeft = 1
          ExplicitTop = 115
        end
      end
      object RzPanel5: TRzPanel
        Left = 0
        Top = 1
        Width = 295
        Height = 120
        Align = alClient
        BorderOuter = fsGroove
        BorderSides = []
        TabOrder = 2
        ExplicitWidth = 352
        object RzDBStatusPane6: TRzDBStatusPane
          Left = 0
          Top = 20
          Width = 295
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1048#1084#1103':'
          DataField = 'cont_name_i'
          DataSource = srcContacts
          ExplicitLeft = 64
          ExplicitTop = 24
          ExplicitWidth = 100
        end
        object RzDBStatusPane7: TRzDBStatusPane
          Left = 0
          Top = 40
          Width = 295
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1054#1090#1095#1077#1089#1090#1074#1086':'
          DataField = 'cont_name_o'
          DataSource = srcContacts
          ExplicitLeft = 10
          ExplicitTop = 72
          ExplicitWidth = 284
        end
        object RzDBStatusPane8: TRzDBStatusPane
          Left = 0
          Top = 60
          Width = 295
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1055#1088#1086#1092#1077#1089#1089#1080#1103':'
          DataField = 'cont_prof'
          DataSource = srcContacts
          ExplicitLeft = 1
          ExplicitTop = 88
          ExplicitWidth = 284
        end
        object RzDBStatusPane9: TRzDBStatusPane
          Left = 0
          Top = 80
          Width = 295
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
          DataField = 'unit_name_full'
          DataSource = srcContacts
          ExplicitLeft = 18
          ExplicitTop = 96
          ExplicitWidth = 284
        end
        object RzDBStatusPane10: TRzDBStatusPane
          Left = 0
          Top = 0
          Width = 295
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1060#1072#1084#1080#1083#1080#1103':'
          DataField = 'cont_name_f'
          DataSource = srcContacts
          ExplicitLeft = 64
          ExplicitTop = 24
          ExplicitWidth = 100
        end
        object RzDBStatusPane12: TRzDBStatusPane
          Left = 0
          Top = 100
          Width = 295
          FrameStyle = fsStatus
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103':'
          DataField = 'cont_name_save'
          DataSource = srcContacts
          ExplicitTop = 101
          ExplicitWidth = 352
        end
      end
    end
  end
  object RzSizePanel1: TRzSizePanel
    Left = 0
    Top = 527
    Width = 1091
    Height = 243
    Align = alBottom
    TabOrder = 3
    object RzPanel6: TRzPanel
      Left = 0
      Top = 5
      Width = 1091
      Height = 238
      Align = alClient
      BorderOuter = fsFlat
      BorderSides = [sdTop]
      TabOrder = 0
      ExplicitLeft = 256
      ExplicitTop = 48
      ExplicitWidth = 185
      ExplicitHeight = 41
      object DBGridContactList: TDBGridEh
        Left = 0
        Top = 1
        Width = 1091
        Height = 237
        Align = alClient
        AutoFitColWidths = True
        BorderStyle = bsNone
        DataSource = ModuleDB.srcContactList
        DynProps = <>
        IndicatorOptions = [gioShowRecNoEh]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        PopupMenu = pmContactList
        ReadOnly = True
        SearchPanel.Enabled = True
        TabOrder = 0
        OnCellClick = DBGridContactListCellClick
        OnGetCellParams = DBGridContactListGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'DISMISSED'
            Footers = <>
            ImageList = imgContactDelete
            KeyList.Strings = (
              '1')
            MaxWidth = 30
            MinWidth = 30
            Title.Caption = #1059#1074#1086#1083#1077#1085
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 30
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FIRST_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIDDLE_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROFESSION'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DIV_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA_ROZHD'
            Footers = <>
            Title.EndEllipsis = True
            Title.ToolTips = True
            ToolTips = True
            Width = 80
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object RzSizePanel2: TRzSizePanel
    Left = 0
    Top = 28
    Width = 271
    Height = 499
    TabOrder = 4
    ExplicitHeight = 530
    object RzPanel7: TRzPanel
      Left = 0
      Top = 0
      Width = 266
      Height = 499
      Align = alClient
      BorderOuter = fsFlat
      BorderSides = [sdRight, sdBottom]
      TabOrder = 0
      ExplicitLeft = 56
      ExplicitTop = 280
      ExplicitWidth = 185
      ExplicitHeight = 41
      object DBGridUnits: TDBGridEh
        Left = 0
        Top = 0
        Width = 265
        Height = 498
        Align = alClient
        AutoFitColWidths = True
        BorderStyle = bsNone
        DataSource = srcUnits
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghRecordMoving, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentShowHint = False
        PopupMenu = pmUnits
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        OnDblClick = Action3Execute
        OnMouseUp = DBGridUnitsMouseUp
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit_name_short'
            Footers = <>
            Title.ToolTips = True
            ToolTips = True
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object pmContacts: TPopupMenu
    Left = 312
    Top = 360
    object N1: TMenuItem
      Action = Action5
    end
    object N2: TMenuItem
      Action = Action6
    end
    object N3: TMenuItem
      Action = Action7
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Action = acFindInContactList
    end
  end
  object pmUnitInsert: TPopupMenu
    Left = 384
    Top = 360
    object N5: TMenuItem
      Action = Action1
    end
    object N6: TMenuItem
      Action = Action2
    end
  end
  object pmUnits: TPopupMenu
    Left = 456
    Top = 360
    object N7: TMenuItem
      Action = Action1
    end
    object N8: TMenuItem
      Action = Action2
    end
    object N9: TMenuItem
      Action = Action3
    end
    object N10: TMenuItem
      Action = Action4
    end
  end
  object Units: TUniQuery
    Connection = ModuleDB.ConnectionMYSQL
    SQL.Strings = (
      'SELECT *'
      'FROM Units'
      'ORDER BY unit_name_short')
    AutoCalcFields = False
    Left = 760
    Top = 72
  end
  object srcUnits: TUniDataSource
    DataSet = memUnits
    Left = 760
    Top = 216
  end
  object memUnits: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = setUnits
    TreeList.Active = True
    TreeList.KeyFieldName = 'unit_id'
    TreeList.RefParentFieldName = 'unit_parent'
    Left = 760
    Top = 168
    object memUnitsunit_id: TIntegerField
      FieldName = 'unit_id'
    end
    object memUnitsunit_parent: TIntegerField
      FieldName = 'unit_parent'
    end
    object memUnitsunit_name_short: TWideStringField
      FieldName = 'unit_name_short'
      Size = 50
    end
    object memUnitsunit_name_full: TWideStringField
      FieldName = 'unit_name_full'
      Size = 50
    end
  end
  object setUnits: TDataSetDriverEh
    KeyFields = 'unit_id'
    ProviderDataSet = Units
    Left = 760
    Top = 120
  end
  object ActionManager: TActionManager
    Images = ImageList16
    Left = 352
    Top = 112
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      ImageIndex = 0
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072' ('#1074' '#1082#1086#1088#1085#1077')'
      ImageIndex = 0
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 1
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 2
      OnExecute = Action4Execute
    end
    object Action5: TAction
      Caption = #1053#1086#1074#1099#1081' '#1082#1086#1085#1090#1072#1082#1090
      ImageIndex = 3
      OnExecute = Action5Execute
    end
    object Action6: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 4
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Caption = #1055#1086#1084#1077#1090#1080#1090#1100' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
      ImageIndex = 5
      OnExecute = Action7Execute
    end
    object acFindInContactList: TAction
      Caption = #1053#1072#1081#1090#1080' '#1074' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072#1093
      ImageIndex = 6
      OnExecute = acFindInContactListExecute
    end
    object Action9: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 7
      OnExecute = Action9Execute
    end
    object Action8: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 11
      OnExecute = Action8Execute
    end
    object miViewColumns: TAction
      Caption = 'miViewColumns'
      ImageIndex = 8
      OnExecute = miViewColumnsExecute
    end
    object miAutoFitColWidths: TAction
      Caption = 'miAutoFitColWidths'
      OnExecute = miAutoFitColWidthsExecute
    end
    object acFilterShowAllContacts: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1082#1086#1085#1090#1072#1082#1090#1099
      OnExecute = acFilterShowAllContactsExecute
    end
  end
  object ImageList16: TImageList
    ColorDepth = cd32Bit
    Left = 320
    Top = 264
    Bitmap = {
      494C01010C001800C00010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E2328282833282828332828
      2833282828332828283328282833282828332828283328282833282828332828
      28332828283328282833282828331E1E1E230000000000000000000000002828
      2833272727300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002626262F28282833000000000000
      000000000000000000000000000000000000000000001E1E1E23282828332828
      2833282828331C1C1C20151515182525252D2828283328282833282828332828
      2833282828332525252D1717171A00000000776238C0B57B0BFFB37806FFB377
      04FFB37705FFB37805FFB37805FFB37806FFB47907FFB47A08FFB47A08FFB479
      07FFB37806FFB37806FFB57B0BFF776238C00000000000000000000000002F9D
      DDFF3590C4F12525252D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C21A67B45F1BA8644FF000000000000
      00000000000000000000000000000000000010101012636363BD89898AFF898A
      8AFF888989FF606060B554545495767676E76C6C6CFF575756FF8D8E8EFF8989
      89FF878787FF767677E85757579C2626262FB57B0BFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB57B0BFF0000000000000000000000004372
      8FC42F9CDDFF3687B6E928282833050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001D1D1D22705E48B8CB9951FFB88442FF000000000000
      0000000000000000000000000000000000004A4A4A79A6A5A4FFDAD9D6FFC0BC
      BAFFB0ADAAFF919091FF747473FF82807DFF918F8EFF8F8C8BFFA5A19FFFB8B6
      B4FFD1CECCFFC4C3C2FF989897FF7E7E7EEFB37806FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFD4BBA0FFFEFEFEFFFEFEFEFFAD5300FFB05802FFB05802FFAD53
      00FFFEFEFEFFFEFEFEFFFEFEFEFFB37806FF0000000000000000000000003C41
      435A2F9ADCFF64C5EDFF339EDDFF3435364A0404040500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000736047BDE8C48FFFD9AA5FFFB78341FF000000000000
      000000000000000000000000000000000000797979E9C5C4C3FFD0CFCDFFC9C9
      C6FFB7B4B2FFA9A7A4FF8A8989FF9D9A98FF94918FFF676766FFA3A09DFF6B69
      68FFCDCBC9FFE0DFDDFFC2C1BFFF888888FFB37704FFFEFEFEFFFEFDFAFFFEFD
      F8FFFEFEFDFFD5BB9CFFFEFEFEFFFEFEFEFFAF5700FFEAD2B7FFEAD2B7FFAF57
      00FFFEFEFEFFFEFEFDFFFEFEFEFFB37704FF0000000000000000000000000000
      00002E99DAFF82D6F2FF88E3F9FF319BDBFF3435354910101012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B47C3AFFFEF0CFFFD7A75AFFB6813FFF000000000000
      000000000000000000000000000000000000898989FF8F8D8AFF8A8885FFC8C6
      C4FFC3C1BFFFBBB9B7FF888989FF5D5C5BFF9E9C9BFFBCB9B8FFA19E9BFFB7B5
      B3FFCDCBC9FF868585FFC6C3C1FF878787FFB37705FFFEFEFEFFFEFEF8FFFEFE
      F8FFFEFEFCFFD5BB9DFFFEFEFEFFFEFEFEFFB05801FFE9CEB1FFE9CEB1FFB058
      01FFFEFEFEFFFEFEFBFFFEFEFEFFB37705FF0000000000000000000000000000
      0000446B85BA54BDE9FFA8F4FEFF78DDF7FF339BDBFF434B517B0F0F0F110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C21B27937FFFEFEF9FFD4A457FFB47D3DFF1C1C1C210000
      000000000000000000000000000000000000878788FFB5B2B1FFC3C1BFFFC0BE
      BCFFD0CECCFFC0BDBBFF868787FFA2A09EFFC1BFBEFF6D6C6BFFA19E9BFF6A68
      68FFCDCBC9FFE0DFDDFFC5C3C0FF878787FFB37805FFFEFEFEFFD3B795FFD4B8
      96FFD6BB9AFFD7BD9DFFD6BD9CFFD9C3A7FFB15A05FFCCA272FFCCA272FFB15A
      05FFD9C2A5FFD4B997FFFEFEFEFFB37805FF0000000000000000282828332828
      28334045486B3FA8E1FFBCF4FDFF80E6FAFF73DAF5FF349ADBFF434B4F791717
      171A000000000000000000000000000000000000000000000000000000000000
      00001C1C1C21715F49B6DDAD66FFF8D293FFEAC07BFFD8AA67FF715F49B61C1C
      1C2100000000000000000000000000000000858586FFE7E6E6FFB8B6B4FFB7B6
      B3FFDCDBDAFFC5C2C0FF858686FF5E5C5CFFD9D7D6FFB8B5B4FFA09D9BFFB7B5
      B3FFCECCC9FF868685FFC5C3C1FF878787FFB37805FFFEFEFEFFFEFBECFFFEFC
      EEFFFEFEF2FFD6BA98FFFEFEF4FFFEFEFEFFB05903FFE8CDAAFFE8CDAAFFB059
      03FFFEFEFDFFFEFDEFFFFEFEFEFFB37805FF0000000000000000359ADBFF45AB
      E3FF42A8E1FF3CA4E0FFBCF2FCFF7CE3F7FF77E2F9FF6DD8F4FF3FA4DFFF4659
      64991D1D1D220000000000000000000000000000000000000000000000001C1C
      1C21726048B9ECC081FFF8D192FFF3CC8CFFEDC582FFE9C07DFFDEB473FF7260
      48B91C1C1C21000000000000000000000000858586FFF1F0EEFFEDECEAFFB0AC
      AAFFE8E8E8FFCBC9C7FF838384FFBEBCBAFFE0DFDEFF6A6968FFA09D9BFF6A68
      67FFCDCBC9FFE0DFDDFFC5C3C0FF878787FFB37805FFFEFEFEFFFEF9E7FFFEFA
      E8FFFEFDECFFD6B894FFFEFEEFFFFEFEF9FFB05904FFE8CAA5FFE8CAA5FFB059
      04FFFEFEF7FFFEFBE9FFFEFEFEFFB37805FF00000000000000003498DAFF9DF0
      FCFF7DE4F8FF70DFF8FF6CDDF6FF6ADBF6FF6BDCF6FF6EDFF8FF6DDEF7FF3DA5
      DFFF46677EB91E1E1E23000000000000000000000000000000001C1C1C217260
      48B9EDC68EFFF7D59FFFF5CE8EFFEEC885FFE8BF7AFFE2B770FFE5C188FFDBB4
      7AFF715F48B91C1C1C210000000000000000787979E6ABA7A6FFAFACAAFFBAB7
      B5FFEAEAEAFFB8B7B4FF868585FF7C7B7AFFDCDBDAFFB4B0AFFF9D9997FFB3B1
      AFFFCCCAC8FF868584FFC5C3C0FF878787FFB37806FFFEFEFEFFD3B289FFD4B4
      8CFFD6B78FFFD7B992FFD6B992FFD9BF9CFFB15B07FFCCA06AFFCCA06AFFB15B
      07FFD9BE9AFFD4B48CFFFEFEFEFFB37806FF000000000000000042769BD284DB
      F4FF88E4F7FF65D9F5FF65D9F5FFB8EFFBFFB7F1FCFFB3F1FBFFA8F0FCFFAAF0
      FBFF41A8E1FF466B84BF0000000000000000000000001C1C1C21725F47B9EECE
      9EFFFADAADFFF4CB88FFF1CA89FFEBC17DFFE5BA73FFDEB268FFD8A960FFE3C3
      93FFDAB685FF705D46B91C1C1C21000000004040405B989796FFB1ADABFFE6E4
      E3FFDCDBD9FF909090FFABAAA9FFE6E5E4FFD6D7D6FFAEABABFF979493FFADAC
      ABFFC7C6C5FFDBDBD9FFC3C1BEFF868687FFB37806FFFEFEFEFFFEF4DCFFFEF5
      DEFFFEF8E2FFD5B58DFFFEFAE5FFFEFEEEFFB15A06FFE7C89FFFE7C89FFFB15A
      06FFFEFEEDFFFEF6DEFFFEFEFEFFB37806FF000000000000000047545C856AC4
      EBFF9BE7F9FF5CD5F3FF5ED6F3FF43B3E5FF2E90D7FF3294D9FF3496D9FF3798
      DAFF3B9BDBFF3D9DDCFF00000000000000001D1D1D2274624AB9F0D5AEFFFCE7
      C5FFF5CB88FFF2C986FFECC27BFFE6BB73FFE0B469FFDBAC60FFD6A457FFD19F
      52FFE5CBA5FFDCBE94FF715E46B91D1D1D2200000000616161AD878888FF8A8B
      8BFF8A8A8AFF838383FFC9C5C5FFEBE9E5FFF1EEE8FFEEF1F7FFEFF3F9FFEEF2
      F8FFEDF0F5FFE6E7EAFFCBCAC9FF868686FFB37806FFFEFEFEFFFEF4D5FFFEF5
      D7FFFEF8DCFFD6B589FFFEFADFFFFEFEE8FFB25A07FFE8C89DFFE8C89DFFB25A
      07FFFEFEE6FFFEF5D8FFFEFEFEFFB37806FF00000000000000002829293249AD
      E3FFAFEDFAFF63D7F3FF54D2F2FFABECFAFF60B3E4FF46515989000000010000
      000000000000000000000000000000000000735F46BDFEECCBFFFEF1DCFFF9D9
      A6FFFCE7C6FFFEF2DFFFFCF2E2FFF6E6CBFFF4E3C9FFF5E9D6FFF2E1CAFFE7CD
      A4FFD8B278FFEEDDC5FFE3CCA8FF736047BD0000000000000000000000000000
      000000000000858585FFEBEBEAFF8D8681FFCBA976FF9F722AFFA67936FFB688
      41FFC4964AFFC4A26EFFE5E5E5FF858687FFB47806FFFEFEFEFFDCB079FFDFB3
      7BFFDFB581FFDDB685FFDFB684FFE1BD8DFFB65D08FFC99253FFC99253FFB65D
      08FFE0BB8BFFDCB27BFFFEFEFEFFB47806FF0000000000000000000000003899
      D9FFABEDFAFF81DCF4FF49CDF0FF81DEF5FFAAE5F7FF3695D8FF2525252D0000
      000000000000000000000000000000000000B47B37FFFEFDF1FFF4E2C5FFE7CD
      A3FFDDBA84FFD2A45BFFD09A46FFD6A14CFFDAA551FFD19942FFD2A55CFFD5AE
      70FFD6B37AFFDCBF95FFEDDDC5FFB67D3AFF0000000000000000000000000000
      000000000000868787FFE8E8E6FF717376FFD5B893FFEAB253FFDFA441FFE2AA
      4BFFE8AE4EFFA37231FFDCDDDDFF878788FFB47906FFFEFEFEFF41C2FEFF46C4
      FEFF44C5FEFFE2B47BFF43C6FEFF44CBFEFFB65800FFB35C07FFB35C07FFB658
      00FF44CBFEFF41C3FEFFFEFEFEFFB47906FF0000000000000000000000004576
      9BD28AD9F2FFABE9F8FF3CCAEFFF42CCEFFFBAEFFAFF6AB9E6FF437AA0D90D0D
      0D0E00000000000000000000000000000000B47B37FFFEFEFEFF9F5F00FFAE6F
      0FFFB87D20FFC48B2FFFCE963FFFD7A34EFFDCA753FFD29B45FFC89036FFBE86
      28FFB47719FFA86804FFF6ECDFFFB6803BFF0000000000000000000000000000
      0000000000007C7C7CEB9E9D9EFFC5C6C8FFE9E2D8FFFED18CFFD59527FFDC9E
      35FFBB8026FFA59277FF9FA0A4FF7C7D7DEBB57B0BFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB57B0BFF0000000000000000000000004854
      5E8769C4EAFFD6F9FEFFCCF5FCFFC2F2FCFFD1F7FEFFC5F0FAFF3D99D9FF4146
      496D00000000000000000000000000000000B57C39FFFEF5DBFFE7C183FFEFD1
      A1FFF4DFBFFFF5E1C1FFF5E2C0FFF4DFBFFFF3DEBBFFEFD9B6FFEBD4B1FFE8D1
      ACFFDAB985FFCDA25DFFDFC298FFB7813EFF0000000000000000000000000000
      0000000000000000000051515283777778E27C838CFFEAD0AFFFDB9D33FFCD8A
      1BFF935F1CFF747980DF5152528300000000A67A22EFB57B0BFFB57906FFB578
      04FFB57805FFB47805FFB57805FFB57906FFB47907FFB47A08FFB47A08FFB479
      07FFB57905FFB57906FFB57B0BFFA67A22EF0000000000000000000000002D2E
      2F3A4099D9FF3C96D8FF3B95D8FF3B95D8FF3B96D8FF3D98D9FF429BDAFF459D
      DBFF00000000000000000000000000000000201F1F255C575082917652CEB88D
      51F4C5934FFFC5924EFFC3904AFFC5965BFFC18F4CFFBF8A45FFBE8A44FFBD88
      43FFB08144F48B6E49CE59534C82201F1F250000000000000000000000000000
      0000000000000000000000000000000000000000000034333142CA7D00FFCF87
      06FF413E39580000000000000000000000000000000000000000000000000000
      0000000000000000000028282833282828332828283300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A1E2828
      283328282833282828331A1A1A1E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      283328282833282828330A0A0A0B000000000000000000000000000000000000
      00000909090A1F1F1F2528282833282828330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000054697BFF476484FF4F90D8FF28282833000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A1E3F4566AC1F30
      ACFF1F2FACFF1F30ACFF404566AC1A1A1A1E0000000000000000000000000000
      000000000000000000000000000000000000000000000000000028282833447D
      AAFF457CA9FF4580ABFF3D3E405E000000000000000000000000000000001D1D
      1D223F3E3C5C7D6648C9B78341FFB88442FF0000000000000000282828332828
      2833282828332828283328282833282828320000000000000000000000000000
      000000000000000000005585A7FF7DA6B7FF8FD5FEFF34679AFF282828330000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003C4268AA2239C1FF365D
      F9FF365EFDFF365DF9FF253BC0FF404566AC0000000000000000000000001717
      171A2727273128282833282828332828283327272730282828333B80B2FF709C
      BEFF1CACFEFF54707DAD4190C5FF0000000000000000000000001A1A1A1E7360
      49BBBD8947FFDDAB63FFF3C478FFB78240FF0000000000000000B88442FFB682
      40FFB5803FFFB6813FFFB88341FFB48344FB2626262F28282833282828332525
      252D000000002424242C3BB3FEFF88E6FEFF7DD3FEFF129AFEFF38699BFF2828
      28332323232B28282833282828332626262F2626262F28282833282828332525
      252D000000002525252D2828283328282833282828330B22B5FF3E62FDFF3A5E
      FAFF375BF8FF3A5EFAFF4063FCFF1B2DACFF00000000000000002525252E5454
      549C767473F9787775FF787675FF787675FF76726FF2587A96FFA19991FFAEA2
      9AFF9FC1D7FFAFEBFEFF3C8FC5FF000000000000000005050506685A49AAC08B
      49FFEBBB6FFFF0C480FFF7D29CFFB6813FFF0000000000000000B68240FFF8C8
      7BFFF5C578FFF4CB8BFFBA9563F100000000A78550F1B78B48FFB78B47FF9B7C
      4FE72828283398784BE2C48936FF1C6FC8FF3BC3FEFF28A9FEFF169CFEFF3067
      9FFFA27B46E0BE8D46FFB88C48FFA78550F1A78550F1B78B48FFB78B47FF9B7C
      4FE7282828339B7C4FE7B78B47FFB88A43FFC5933DFF061CB0FFA8BAFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFABBBFEFF182AACFF000000002525252E72716FEA9B9C
      9CFFD0D2D4FFE2E4E9FFE1E3E8FFE2E3E8FFD0D0D2FF9B9999FF827D7AFFC5C1
      BCFFF3EAE3FFBEDDE9FF3C91C9FF00000000000000002F2F2E3DB98543FFE8B7
      6AFFECBF7AFFEECD9BFFD4AB6EFFB78240FF0000000000000000B5803EFFF1C3
      7BFFEFC381FFE9B76CFFBB8844FF1717171AB78B47FFFEFEFEFFFEFEFEFFB385
      3FFFB68944FFB4853EFFFEFEFEFFFEFEFEFF1F6DC1FF40C5FEFF29AAFEFF0F9A
      FEFF20609FFFFEFEFEFFFEFEFEFFB88C48FFB78B47FFFEFEFEFFFEFEFEFFB385
      3FFFB58944FFB3853FFFFEFEFEFFFEFEFEFFFEFEFEFF0016A9FF5573FEFF5574
      FEFF5170FDFF5574FEFF5877FEFF1428B0FF1717171A737271EAB3B2B5FFE5E3
      DEFFE8CC99FFF0C97BFFF4D287FFF8D98CFFF1E0ACFFE5E4DFFFAFADAFFF8F8A
      89FFECE2DAFF338EC9FF000000000000000000000000726049B9D19F56FFE5B2
      65FFECCB99FFBF8E4EFF5E554A8F1E1E1E230000000000000000B6813EFFF4D8
      ABFFEFCE9EFFE9B769FFD3A159FF5D544899B68944FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFAFF2271C4FF3EC6FEFF1DA9
      FEFF7BABD3FF6E6864FFFEFEFEFFBA8D46FFB68944FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFDFF7A85CDFF253BC5FF6984
      FEFF6F8AFEFF6884FEFF273FCAFF635982FF5555549BA1A0A1FFEAE5E1FFE8BA
      72FFEBC379FFF0CF88FFF4D993FFF9E29BFFFCE79DFFFAE29AFFEAE7E2FF9F9B
      9BFF5886A4FF00000000000000000000000000000000B78341FFDCAA5EFFE1B0
      64FFD3AA74FF5E54498E00000000000000000000000000000000B88340FFBD92
      58FAD6B181FFE5B163FFDFAD62FFAF7D43F9B68944FFFEFEFEFFBD7334FFBB68
      20FFBC6922FFBC6922FFBB6820FFBF7434FFFEFEF7FF968C86FF1D71C9FFACD9
      EFFF90867BFFBCB9B5FF6B706CFFC09542FFB68944FFFEFEFEFFBD7334FFBB68
      20FFBC6922FFBC6922FFBB6820FFBE7334FFFEFEF8FF919188FF545EAAFF0217
      A8FF0317A6FF0015A7FF7D8DDDFFC89741FF807D7BF9DBDEE0FFE5C18EFFEAC3
      89FFEDCF96FFF0D18DFFF4DC97FFFAE9A1FFFEF0A8FFFBE79CFFF4E1ADFFDADB
      DDFF7C7875F200000000000000000000000000000000B78241FFDEAA5CFFE1B6
      71FFC5985CFF0404040500000001000000000000000000000000AE8045F50808
      0809C5965CFFE5BA76FFE4B267FFB68241FFB68945FFFEFEFEFFCE8A4BFFE7A6
      5EFFEFC294FFEBBE8FFFE9A860FFCF8B4CFFFEFCEFFFFEFDEAFFFEFEEBFF827A
      75FFE9E7E3FF868A81FFB774B8FF9462D2FFB68945FFFEFEFEFFCE8A4BFFE7A6
      5EFFEFC294FFEBBE8FFFE9A860FFCF8B4CFFFDFCEFFFFEFDEAFFFEFEE9FFFEFE
      E9FFFEFEE7FFFEFEE5FFFEFEFEFFBA8D44FF848381FFF3F7FBFFE0A85AFFF2DA
      B6FFF0D8ABFFF1D89FFFF4DB95FFF7E49DFFFAE9A1FFF8E29BFFF6D88AFFF2F3
      F9FF848281FF00000000000000000000000000000000B78240FFDEB270FFDAA7
      5BFFB68140FF0101010229292934000000000000000000000000020202030000
      0001B5813FFFDEAB60FFE3B774FFB68140FFB68944FFFEFEFEFFDEA46CFFFEE0
      B7FFB4DBF1FF7DA7BFFFFEDDB5FFE0A66EFFF8F4E3FF83858AFFADACA7FFB1B0
      AAFF797B76FFDEADDFFFC893C8FFAB77D6FFB68944FFFEFEFEFFDEA46CFFFEE0
      B7FFB4DBF1FF7DA7BFFFFEDDB5FFE0A66EFFF8F5E3FF82858AFFABAAA5FFABAA
      A5FFA8A7A2FFF7F0DAFFFEFEFEFFB68843FF878483FFF6FBFEFFDDA355FFF5E7
      D0FFF2DEBAFFF2DBACFFF3DBA2FFF4DB96FFF4DC97FFF3D992FFF2D085FFF4F8
      FEFF878483FF00000000000000000000000000000000B7823FFFE1BA82FFD49E
      4FFFBE8A45FF28282832B18044F8000000000000000000000000000000001C1C
      1C20BF8B46FFD8A454FFE4BF86FFB6813FFFB58944FFFEFEFEFFFAE7D1FFE7C4
      9EFF6DB7DEFF458AB1FFE6C29CFFFCE9D5FFF3ECD6FFF6EDD5FFF7EED6FFF8EF
      D6FFFAF4D6FFB77AD3FFB77DD9FFBB933EFFB58944FFFEFEFEFFFAE7D1FFE7C4
      9EFF6DB7DEFF458AB1FFE6C29CFFFCE9D5FFF3ECD6FFF6EDD5FFF6EDD5FFF6ED
      D5FFF4EBD3FFF1E8CFFFFEFEFEFFB58843FF898785FFFCFEFEFFDB9D50FFF5E6
      D3FFF5E5CCFFF3DEB9FFF2DBACFFF1D89EFFF0D18CFFEFCE88FFEDC778FFFAFC
      FEFF898685FF00000000000000000000000000000000AE7C41F8E0C091FFCE99
      47FFC08B45FF8F7048DAB98442FF0000000000000000060606071919191D6458
      49A5C69148FFD29D4CFFE2C294FFB7813EFFB58844FFFEFEFEFFFDE6C8FF5479
      96FF98E2FEFF78C1E4FF4E6887FFFEE9CDFFF0E8CDFFF0E8CFFFF1E9D0FFF1E9
      CFFFF1E9CDFFF1EBC8FFFEFEFEFFB78C43FFB58844FFFEFEFEFFFDE6C8FF5479
      96FF98E2FEFF78C1E4FF4E6887FFFEE9CDFFF0E8CDFFF0E8CFFFF1E9D0FFF1E8
      CFFFEFE6CDFFEDE3C7FFFEFEFEFFB58843FF878483F8E9ECF0FFE4B887FFEBCB
      A2FFF8F0E4FFF5E5CBFFF2DEBAFFF0D8ABFFEECF96FFEAC278FFEFD2A0FFE8EA
      EFFF868482F80000000000000000000000000000000057504881D5B285FFD3A5
      5EFFC89140FFE3C69CFFB88340FF00000000000000003838374F65584AA5BB86
      43FFCC9747FFD7AB6AFFD8B88DFF6E5E4BAAB68944FFFEFEFEFFF4CB94FF002D
      6AFF3176ABFF5084B0FF001754FFF5CE9AFFF0E4C6FFAF7C36FFC4A066FFC49F
      65FFC29D61FFECE0BDFFFEFEFEFFB68943FFB68944FFFEFEFEFFF4CB94FF002D
      6AFF3176ABFF5084B0FF001754FFF5CE9AFFF0E4C6FFAF7C36FFC4A066FFC49F
      65FFC29D61FFEBDEBDFFFEFEFEFFB68843FF53525283B2B1B1FFFDF9F4FFDA9F
      55FFEBCAA1FFF8EBDBFFF5E6CFFFF1DCBAFFEBC894FFE6B86FFFFEFCF8FFB1B0
      B1FF535252830000000000000000000000000000000000000000BC8C4CFFD0A5
      65FFC38A36FFD8B47DFFB7813EFF0000000000000000B98543FFC18C42FFC892
      41FFCF9D53FFE6CDA9FFBC8A4CFF1B1B1B1FB68944FFFEFEFEFFE2AA5BFF5861
      5FFF015493FF02437CFF585656FFE3AB5FFFEADDB8FFE9DCB8FFEADCB8FFE9DC
      B7FFE8DAB5FFE7D8B1FFFEFEFEFFB68944FFB68944FFFEFEFEFFE2AA5BFF5861
      5FFF015493FF02437CFF585656FFE3AB5FFFEADDB8FFE9DCB8FFEADCB8FFE9DC
      B7FFE8DAB5FFE7D8B1FFFEFEFEFFB68944FF00000000807F7DE5CCCCCEFFFEFC
      F9FFE6BB89FFD99B4EFFDCA153FFDDA557FFEBC795FFFEFEFBFFCBCBCDFF807D
      7DE5000000000000000000000000000000000000000028282832B59264F1E5CE
      ABFFE8D2B1FFE9D4B3FFB7823EFF0000000000000000B88341FFCC9B51FFD9B4
      7CFFE9D4B4FFC59961FF62574B9500000000B78B48FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB78B47FFB78B48FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB78B47FF000000000000000081807FE5B7B7
      B8FFF4F7FBFFFEFEFEFFFEFEFEFFFEFEFEFFF4F6FBFFB7B6B8FF817F7FE50000
      00000000000000000000000000000000000000000000B58344FBB88341FFB781
      3EFFB7803CFFB7813EFFB98442FF0000000000000000B8823FFFE9D4B5FFDABC
      94FFBF8F51FF6E5E4BAA0000000000000000A88550EFB78B48FFB68A45FFB78A
      44FFB88A44FFB88A44FFB78A44FFB68944FFB68944FFB68844FFB68843FFB688
      43FFB68843FFB68944FFB78B47FFA88550EFA88550EFB78B48FFB68A45FFB78A
      44FFB88A44FFB88A44FFB78A44FFB68944FFB68944FFB68844FFB68843FFB688
      43FFB68843FFB68944FFB78B47FFA88550EF0000000000000000000000005353
      53838E8C8BF7949290FF949190FF949190FF8E8C8BF753535383000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B98441FFBA8746FF7964
      4ABB2A2929330000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A1E2828
      283328282833282828331A1A1A1E000000000000000000000000000000000000
      0000000000000000000028282833282828332828283300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A1E2828
      283328282833282828331A1A1A1E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A1E2828
      283328282833282828331A1A1A1E000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A1E37624FAC009D
      5BFF009C5AFF009D5BFF376251AC1A1A1A1E0000000000000000000000000000
      00000000000000000000576977FF486483FF4F90D8FF28282833000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A1E454B6EAC354A
      CBFF354ACAFF354ACBFF454B6EAC1A1A1A1E0000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A1E375E4BAC008B
      49FF008A47FF008B49FF375E4BAC1A1A1A1E000000000A0A0A0B0909090A0909
      090A0909090A0909090A0909090A0909090A0707070838614DAA00A565FF00B9
      85FF74DEC3FF00B985FF00A567FF376251AC000000000A0A0A0B0909090A0909
      090A0909090A060606075F849CFF81A6B5FF8FD5FEFF336799FF282828330707
      07080A0A0A0B000000000000000000000000000000000A0A0A0B0909090A0909
      090A0909090A0909090A0909090A0909090A0707070845496DAA354ED6FF355A
      F8FF345AF9FF355AF8FF354FD6FF454B6EAC0000000000000000000000000000
      00000000000000000000000000000000000000000000385D4BAA009859FF00BA
      85FF74DFC5FF00BA85FF009859FF375E4BAC2626262F3D40415F3C3E405C3C3E
      3F5C3C3E3F5C3C3E3F5C3C3E3F5C3B3D3F5A38393A51009D4FFF00BF89FF00BA
      81FFFEFEFEFF00BA81FF00BF8BFF009D5BFF2626262F3D40415F3C3E405C3C3E
      3F5C3B3D3E593638384E4CB1F0FF8EE6FEFF80D3FEFF129AFEFF396796FF393B
      3C543D3F415E2626262F00000000000000002626262F3D40415F3C3E405C3C3E
      3F5C3C3E3F5C3C3E3F5C3C3E3F5C3B3D3F5A38393A51303FCAFF3E61FAFF395D
      F9FF375AF7FF395DF9FF3E62FAFF3148CBFF2626262F28282833282828332525
      252D000000002525252D282828332828283328282833008B47FF00C08CFF00BB
      82FFFEFEFEFF00BB82FF00C08CFF008B49FF458DBBF14097D1FF3D93CFFF3B91
      CEFF3B91CDFF3C91CDFF3C91CDFF3D91D0FF4491D9FF009A4BFF72E4C9FFFEFE
      FEFFFEFEFEFFFEFEFEFF74E4CBFF009B59FF458DBBF14097D1FF3D93CFFF3B91
      CEFF3B91CDFF3B90CDFF3A90CCFF2B70C1FF40C3FEFF28AAFEFF179CFEFF3965
      94FF449BD4FF4589B7ED1010101200000000458DBBF14097D1FF3D93CFFF3B91
      CEFF3B91CDFF3C91CDFF3C91CDFF3D93CEFF3E9ACEFF2B3BC8FFA8B7FEFFFEFE
      FEFFFEFEFEFFFEFEFEFFA8B9FEFF2E45C9FFA78550F1B78B48FFB78B47FF9B7C
      4FE7282828339B7C4FE7B78B47FFB98944FFCA8A47FF008641FF70E5CCFFFEFE
      FEFFFEFEFEFFFEFEFEFF74E6CDFF008A46FF4198D1FF3C93CFFFAAFAFEFF9AF2
      FEFF91F0FEFF92F0FEFF92F0FEFF94F0FEFF9DF3FEFF009547FF00C992FF00C6
      8DFFFEFEFEFF00C78EFF00CB96FF009C59FF4198D1FF3C93CFFFAAFAFEFF9AF2
      FEFF91F0FEFF92F0FEFF92F0FEFF96F4FEFF2D6FBEFF44C5FEFF2AAAFEFF149A
      FEFF316397FF67C2EDFF434A4E73000000004198D1FF3C93CFFFAAFAFEFF9AF2
      FEFF91F0FEFF92F0FEFF92F0FEFF93F2FEFF97FBFEFF2735C5FF5872FCFF5472
      FDFF5170FCFF5472FDFF5A76FEFF3046CAFFB78B47FFFEFEFEFFFEFEFEFFB385
      3FFFB58944FFB3853FFFFEFEFEFFFEFEFEFFFEFEFEFF008138FF00CA94FF00C8
      8EFFFEFEFEFF00C88FFF00CC97FF008A47FF4096D0FF53ABDCFF8DD9F4FFA1EC
      FEFF81E4FDFF83E4FDFF83E4FDFF85E5FEFF8CE8FEFF32B99DFF00A862FF00D1
      98FF71EBD0FF00D199FF00AD69FF3E5B4E924096D0FF53ABDCFF8DD9F4FFA1EC
      FEFF81E4FDFF83E4FDFF84E5FDFF86E7FEFF8DEEFEFF2F70BEFF41C5FEFF1FA9
      FEFF84AED3FF847164FF456F8BC6000000004096D0FF53ABDCFF8DD9F4FFA1EC
      FEFF81E4FDFF83E4FDFF83E4FDFF85E6FDFF88EDFEFF5288DFFF3D4FD8FF6B84
      FEFF6F88FEFF6B85FEFF4256DBFF474B6492B68944FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF67BC94FF009C5AFF00D1
      9AFF6FECD2FF00D19AFF009F5FFF538D4BFF3F95D0FF6EC3E9FF69BBE5FFBAF1
      FEFF72DDFCFF74DDFBFF75DDFBFF79DEFCFF7DE0FEFF88E3FEFF2FB79DFF0094
      46FF009447FF009648FF1C9D90FF101010123F95D0FF6EC3E9FF69BBE5FFBAF1
      FEFF72DDFCFF74DDFBFF75DEFBFF79DFFCFF7DE2FDFF84E8FEFF296FC2FFB1D9
      EDFF92877BFFC3BCB4FF7D7565FF282828333F95D0FF6EC3E9FF69BBE5FFBAF1
      FEFF72DDFCFF74DDFBFF75DDFBFF78DEFBFF7CE2FCFF82EBFEFF4E85DDFF2835
      C5FF2837C5FF2837C6FF3B6CCEFF10101012B68944FFFEFEFEFFBD7334FFBB68
      20FFBC6922FFBC6922FFBB6820FFBE7334FFFEFEFAFF958991FF41976EFF0080
      37FF007D36FF007D36FF6BC3A4FFCD8E4CFF3D94CFFF8FDCF7FF419FD7FFDCFB
      FEFFD9F9FEFFDAF8FEFFDDF9FEFF71DBFBFF73DAFAFF75DAFDFF79DCFEFF7CDE
      FEFF7CDEFEFFACEBFEFF81C0EDFF43484C703D94CFFF8FDCF7FF419FD7FFDCFB
      FEFFD9F9FEFFDAF8FEFFDDF9FEFF71DBFBFF73DAFAFF74DCFBFF73E1FEFF8E78
      6EFFEDE6E0FF888A80FFBC75B4FF9F62C8FF3D94CFFF8FDCF7FF419FD7FFDCFB
      FEFFD9F9FEFFDAF8FEFFDDF9FEFF71DBFBFF73DBFAFF74DCFAFF76E1FBFF77E5
      FCFF76E6FDFFA6F3FEFF7CC5E6FF42484C70B68945FFFEFEFEFFCE8A4BFFE7A6
      5EFFEFC294FFEBBE8FFFE9A860FFCF8A4CFFFEFCF0FFFEFCEDFFFEFDF0FFFEFD
      F1FFFEFCF1FFFEF9EEFFFEFEFEFFBC8A46FF3B92CEFFB1F5FEFF4EABDDFF3289
      C9FF3289C9FF3289C9FF3389C9FF58BCE8FF6BD8FAFF67D5F9FF66D4FAFF66D4
      FAFF65D4FBFF83DDFDFFAAE0F7FF466C87C83B92CEFFB1F5FEFF4EABDDFF3289
      C9FF3289C9FF3289C9FF3389C9FF58BCE8FF6BD8FAFF67D5FAFF64D7FCFF5FDB
      FEFF857A70FFE3AFDDFFCE94C4FFB677CCFF3B92CEFFB1F5FEFF4EABDDFF3289
      C9FF3289C9FF3289C9FF3389C9FF58BCE8FF6BD8FAFF67D5F9FF66D5F9FF65D5
      F9FF64D5F9FF82DEFBFFA9E0F5FF466C87C8B68944FFFEFEFEFFDEA46CFFFEE0
      B7FFB4DBF1FF7DA7BFFFFEDDB5FFE0A66EFFF8F4E3FF82848AFFACA9A6FFACA9
      A6FFA9A6A4FFF8EFDBFFFEFEFEFFB68843FF3A91CEFFB7F2FEFF74DEFDFF78DF
      FDFF79E0FDFF79E0FEFF7AE1FEFF4FAADCFF53B8E7FFD9F7FEFFD5F5FEFFD5F5
      FEFFD4F5FEFFD4F6FEFFDAFBFEFF3B93CFFF3A91CEFFB7F2FEFF74DEFDFF78DF
      FDFF79E0FDFF79E0FEFF7AE1FEFF4FAADCFF53B8E7FFD9F7FEFFD5F6FEFFD3F8
      FEFFD0FEFEFFCC83D0FFCE85D1FF329CD3FF3A91CEFFB7F2FEFF74DEFDFF78DF
      FDFF79E0FDFF79E0FEFF7AE1FEFF4FAADCFF53B8E7FFD9F7FEFFD5F5FEFFD5F5
      FEFFD4F5FEFFD4F6FEFFDAFBFEFF3B93CFFFB58944FFFEFEFEFFFAE7D1FFE7C4
      9EFF6DB7DEFF458AB1FFE6C29CFFFCE9D5FFF3ECD6FFF6EDD5FFF6EDD5FFF6ED
      D5FFF4EBD3FFF1E8CFFFFEFEFEFFB58843FF3991CEFFBFF2FEFF6DD8FAFF70D9
      FAFF71D9FAFF71D9FAFF71DAFAFF73DDFCFF4CA8DBFF338AC9FF328ACAFF308A
      CAFF308BCBFF348FCDFF3A93CFFF4B6779AE3991CEFFBFF2FEFF6DD8FAFF70D9
      FAFF71D9FAFF71D9FAFF71DAFAFF73DDFCFF4CA8DBFF338AC9FF328ACAFF308B
      CAFF2F8ECDFF3396D0FF3999D2FF4B6778AD3991CEFFBFF2FEFF6DD8FAFF70D9
      FAFF71D9FAFF71D9FAFF71DAFAFF73DDFCFF4CA8DBFF338AC9FF328ACAFF308A
      CAFF308BCBFF348FCDFF3A93CFFF4B6779AEB58844FFFEFEFEFFFDE6C8FF5479
      96FF98E2FEFF78C1E4FF4E6887FFFEE9CDFFF0E8CDFFF0E8CFFFF1E9D0FFF1E8
      CFFFEFE6CDFFEDE3C7FFFEFEFEFFB58843FF3891CEFFC9F5FEFF66D4F8FF69D4
      F8FF67D3F8FF66D3F8FF66D4F8FF67D5F9FF68D7FAFF68D8FBFF68D9FCFF66D9
      FCFFD9FCFEFF3992CFFF2627272F000000003891CEFFC9F5FEFF66D4F8FF69D4
      F8FF67D3F8FF66D3F8FF66D4F8FF67D5F9FF68D7FAFF68D8FBFF68D9FCFF66D9
      FCFFD9FCFEFF3993CFFF2627272F000000003891CEFFC9F5FEFF66D4F8FF69D4
      F8FF67D3F8FF66D3F8FF66D4F8FF67D5F9FF68D7FAFF68D8FBFF68D9FCFF66D9
      FCFFD9FCFEFF3992CFFF2627272F00000000B68944FFFEFEFEFFF4CB94FF002D
      6AFF3176ABFF5084B0FF001754FFF5CE9AFFF0E4C6FFAF7C36FFC4A066FFC49F
      65FFC29D61FFEBDEBDFFFEFEFEFFB68843FF3891CEFFD4F6FEFF5DD0F8FF5ECF
      F7FFB3EAFCFFD8F5FEFFD9F7FEFFD9F7FEFFD9F8FEFFDAF8FEFFD9F8FEFFD9F9
      FEFFDEFDFEFF3A93CFFF2A2B2B35000000003891CEFFD4F6FEFF5DD0F8FF5ECF
      F7FFB3EAFCFFD8F5FEFFD9F7FEFFD9F7FEFFD9F8FEFFDAF8FEFFD9F8FEFFD9F9
      FEFFDEFDFEFF3A93CFFF2A2B2B35000000003891CEFFD4F6FEFF5DD0F8FF5ECF
      F7FFB3EAFCFFD8F5FEFFD9F7FEFFD9F7FEFFD9F8FEFFDAF8FEFFD9F8FEFFD9F9
      FEFFDEFDFEFF3A93CFFF2A2B2B3500000000B68944FFFEFEFEFFE2AA5BFF5861
      5FFF015493FF02437CFF585656FFE3AB5FFFEADDB8FFE9DCB8FFEADCB8FFE9DC
      B7FFE8DAB5FFE7D8B1FFFEFEFEFFB68944FF3A93CFFFDBFBFEFFD7F6FEFFD7F6
      FEFFDAF9FEFF328DCCFF3690CDFF3791CEFF3791CEFF3791CEFF3791CEFF3791
      CEFF3A93CFFF4488B4EA00000000000000003A93CFFFDBFBFEFFD7F6FEFFD7F6
      FEFFDAF9FEFF328DCCFF3690CDFF3791CEFF3791CEFF3791CEFF3791CEFF3791
      CEFF3A93CFFF4488B4EA00000000000000003A93CFFFDBFBFEFFD7F6FEFFD7F6
      FEFFDAF9FEFF328DCCFF3690CDFF3791CEFF3791CEFF3791CEFF3791CEFF3791
      CEFF3A93CFFF4488B4EA0000000000000000B78B48FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB78B47FF448BBAEF3A93CFFF3791CEFF3791
      CEFF3A93CFFF4483ACE42324242B2829293229292A3329292A3329292A332929
      2A332B2C2D37000000000000000000000000448BBAEF3A93CFFF3791CEFF3791
      CEFF3A93CFFF4483ACE42324242B2829293229292A3329292A3329292A332929
      2A332B2C2D37000000000000000000000000448BBAEF3A93CFFF3791CEFF3791
      CEFF3A93CFFF4483ACE42324242B2829293229292A3329292A3329292A332929
      2A332B2C2D37000000000000000000000000A88550EFB78B48FFB68A45FFB78A
      44FFB88A44FFB88A44FFB78A44FFB68944FFB68944FFB68844FFB68843FFB688
      43FFB68843FFB68944FFB78B47FFA88550EF424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF3F800100000000FE3F0000
      00000000FC3F000000000000FC3F000000000000FC3F000000000000F81F0000
      00000000F00F000000000000E007000000000000C00300000000000080010000
      0000000000008000000000000000F800000000000000F800000000000000F800
      000000000000FC01000000000000FF87FC7FFFC1FFE10000FC3FFF80FFC10000
      FC1FFF80E001000008000800C001000000000000800100000000000000030000
      0000000000070000000000000007000000000000000700000000000000070000
      00000000000700000000000000070000000000000007000000000000800F0000
      00000000C01F000000000000E03F0000FFC1FC7FFFC1FFC1FF80FC3FFF80FF80
      800080078000FF80000000030000080000000001000000000000000100000000
      0000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010001000100000001000100010000
      0003000300030000000700070007000000000000000000000000000000000000
      000000000000}
  end
  object Contacts: TUniQuery
    Connection = ModuleDB.ConnectionMYSQL
    SQL.Strings = (
      'SELECT *'
      
        'FROM Contacts as C LEFT JOIN Units as U ON C.cont_unit = U.unit_' +
        'id'
      'ORDER BY C.cont_name_save')
    Left = 848
    Top = 80
  end
  object setContacts: TDataSetDriverEh
    KeyFields = 'cont_id'
    ProviderDataSet = Contacts
    Left = 848
    Top = 128
  end
  object memContacts: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = setContacts
    Left = 848
    Top = 176
    object memContactscont_id: TIntegerField
      FieldName = 'cont_id'
    end
    object memContactscont_name_f: TWideStringField
      FieldName = 'cont_name_f'
    end
    object memContactscont_name_i: TWideStringField
      FieldName = 'cont_name_i'
    end
    object memContactscont_name_o: TWideStringField
      FieldName = 'cont_name_o'
    end
    object memContactscont_name_save: TWideStringField
      FieldName = 'cont_name_save'
      Size = 120
    end
    object memContactscont_unit: TIntegerField
      FieldName = 'cont_unit'
    end
    object memContactscont_prof: TWideStringField
      FieldName = 'cont_prof'
      Size = 80
    end
    object memContactscont_email: TWideStringField
      FieldName = 'cont_email'
      Size = 100
    end
    object memContactscont_email_name: TWideStringField
      FieldName = 'cont_email_name'
      Size = 50
    end
    object memContactscont_tel_work: TWideStringField
      FieldName = 'cont_tel_work'
      Size = 50
    end
    object memContactscont_tel_work2: TWideStringField
      FieldName = 'cont_tel_work2'
      Size = 50
    end
    object memContactscont_tel_mobile: TWideStringField
      FieldName = 'cont_tel_mobile'
      Size = 50
    end
    object memContactscont_tel_fax: TWideStringField
      FieldName = 'cont_tel_fax'
      Size = 50
    end
    object memContactscont_note: TWideMemoField
      FieldName = 'cont_note'
      BlobType = ftWideMemo
    end
    object memContactscont_date_born: TDateField
      FieldName = 'cont_date_born'
    end
    object memContactscont_date_create: TDateTimeField
      FieldName = 'cont_date_create'
    end
    object memContactscont_date_change: TDateTimeField
      FieldName = 'cont_date_change'
    end
    object memContactscont_tab_no: TIntegerField
      FieldName = 'cont_tab_no'
    end
    object memContactscont_is_delete: TLargeintField
      FieldName = 'cont_is_delete'
    end
    object memContactscont_is_dismissed: TLargeintField
      FieldName = 'cont_is_dismissed'
    end
    object memContactsunit_id: TIntegerField
      FieldName = 'unit_id'
    end
    object memContactsunit_parent: TIntegerField
      FieldName = 'unit_parent'
    end
    object memContactsunit_name_short: TWideStringField
      FieldName = 'unit_name_short'
      Size = 50
    end
    object memContactsunit_name_full: TWideStringField
      FieldName = 'unit_name_full'
      Size = 50
    end
  end
  object srcContacts: TUniDataSource
    DataSet = memContacts
    Left = 848
    Top = 224
  end
  object pmContactList: TPopupMenu
    OnPopup = pmContactListPopup
    Left = 526
    Top = 360
    object miCL_Update: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      OnClick = miCL_UpdateClick
    end
    object mi: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1073#1072#1079#1091
      OnClick = miClick
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object R1: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080
      OnClick = R1Click
    end
    object miCLFilteToField: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1079#1072#1087#1080#1089#1080' '#1087#1086': '
      OnClick = miCLFilteToFieldClick
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object miCLShowDismissed: TMenuItem
      AutoCheck = True
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1091#1074#1086#1083#1077#1085#1085#1099#1093
      Checked = True
      OnClick = miCLShowDismissedClick
    end
  end
  object pmContactColumn: TPopupMenu
    Alignment = paRight
    OnPopup = pmContactColumnPopup
    Left = 1014
    Top = 76
  end
  object imgContactDelete: TImageList
    ColorDepth = cd32Bit
    Left = 750
    Top = 356
    Bitmap = {
      494C0101010008002C0010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A1E2828
      283328282833282828331A1A1A1E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A1E3F4566AC1F30
      ACFF1F2FACFF1F30ACFF404566AC1A1A1A1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003C4268AA2239C1FF365D
      F9FF365EFDFF365DF9FF253BC0FF404566AC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002626262F28282833282828332525
      252D000000002525252D2828283328282833282828330B22B5FF3E62FDFF3A5E
      FAFF375BF8FF3A5EFAFF4063FCFF1B2DACFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A78550F1B78B48FFB78B47FF9B7C
      4FE7282828339B7C4FE7B78B47FFB88A43FFC5933DFF061CB0FFA8BAFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFABBBFEFF182AACFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B78B47FFFEFEFEFFFEFEFEFFB385
      3FFFB58944FFB3853FFFFEFEFEFFFEFEFEFFFEFEFEFF0016A9FF5573FEFF5574
      FEFF5170FDFF5574FEFF5877FEFF1428B0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B68944FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFDFF7A85CDFF253BC5FF6984
      FEFF6F8AFEFF6884FEFF273FCAFF635982FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B68944FFFEFEFEFFBD7334FFBB68
      20FFBC6922FFBC6922FFBB6820FFBE7334FFFEFEF8FF919188FF545EAAFF0217
      A8FF0317A6FF0015A7FF7D8DDDFFC89741FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B68945FFFEFEFEFFCE8A4BFFE7A6
      5EFFEFC294FFEBBE8FFFE9A860FFCF8B4CFFFDFCEFFFFEFDEAFFFEFEE9FFFEFE
      E9FFFEFEE7FFFEFEE5FFFEFEFEFFBA8D44FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B68944FFFEFEFEFFDEA46CFFFEE0
      B7FFB4DBF1FF7DA7BFFFFEDDB5FFE0A66EFFF8F5E3FF82858AFFABAAA5FFABAA
      A5FFA8A7A2FFF7F0DAFFFEFEFEFFB68843FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B58944FFFEFEFEFFFAE7D1FFE7C4
      9EFF6DB7DEFF458AB1FFE6C29CFFFCE9D5FFF3ECD6FFF6EDD5FFF6EDD5FFF6ED
      D5FFF4EBD3FFF1E8CFFFFEFEFEFFB58843FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B58844FFFEFEFEFFFDE6C8FF5479
      96FF98E2FEFF78C1E4FF4E6887FFFEE9CDFFF0E8CDFFF0E8CFFFF1E9D0FFF1E8
      CFFFEFE6CDFFEDE3C7FFFEFEFEFFB58843FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B68944FFFEFEFEFFF4CB94FF002D
      6AFF3176ABFF5084B0FF001754FFF5CE9AFFF0E4C6FFAF7C36FFC4A066FFC49F
      65FFC29D61FFEBDEBDFFFEFEFEFFB68843FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B68944FFFEFEFEFFE2AA5BFF5861
      5FFF015493FF02437CFF585656FFE3AB5FFFEADDB8FFE9DCB8FFEADCB8FFE9DC
      B7FFE8DAB5FFE7D8B1FFFEFEFEFFB68944FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B78B48FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB78B47FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A88550EFB78B48FFB68A45FFB78A
      44FFB88A44FFB88A44FFB78A44FFB68944FFB68944FFB68844FFB68843FFB688
      43FFB68843FFB68944FFB78B47FFA88550EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFC1000000000000FF80000000000000
      FF80000000000000080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object pmFilter: TPopupMenu
    Left = 862
    Top = 332
    object N13: TMenuItem
      Action = acFilterShowAllContacts
    end
  end
end

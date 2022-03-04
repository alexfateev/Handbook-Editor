object fmEmailExceptions: TfmEmailExceptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmEmailExceptions'
  ClientHeight = 591
  ClientWidth = 474
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
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 464
    Height = 551
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alClient
    AutoFitColWidths = True
    DataSource = fmEmail.srcEmail_import_exceptions
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'email_except_name'
        Footers = <>
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        Title.EndEllipsis = True
        Title.ToolTips = True
        ToolTips = True
        Width = 150
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'email_except_description'
        Footers = <>
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Title.EndEllipsis = True
        Title.ToolTips = True
        ToolTips = True
        Width = 250
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 556
    Width = 474
    Height = 35
    Align = alBottom
    BevelEdges = []
    BevelKind = bkFlat
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object Button1: TButton
      Left = 394
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 360
      ExplicitTop = 8
    end
  end
end

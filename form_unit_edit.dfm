object fmUnitEdit: TfmUnitEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmUnitEdit'
  ClientHeight = 137
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 50
    Width = 402
    Height = 13
    Margins.Left = 8
    Margins.Top = 5
    Margins.Right = 8
    Margins.Bottom = 0
    Align = alTop
    Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    ExplicitWidth = 116
  end
  object Label1: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 402
    Height = 13
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 0
    Align = alTop
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    ExplicitWidth = 77
  end
  object Panel1: TPanel
    Left = 0
    Top = 100
    Width = 418
    Height = 37
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkFlat
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object btOk: TButton
      Left = 263
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1082
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TButton
      Left = 338
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = btCancelClick
    end
  end
  object edNameFull: TRzDBEdit
    AlignWithMargins = True
    Left = 8
    Top = 66
    Width = 402
    Height = 21
    Margins.Left = 8
    Margins.Right = 8
    DataSource = fmHandbook.srcUnits
    DataField = 'unit_name_full'
    Align = alTop
    TabOrder = 1
  end
  object edName: TRzDBEdit
    AlignWithMargins = True
    Left = 8
    Top = 24
    Width = 402
    Height = 21
    Margins.Left = 8
    Margins.Right = 8
    Margins.Bottom = 0
    DataSource = fmHandbook.srcUnits
    DataField = 'unit_name_short'
    Align = alTop
    TabOrder = 2
    OnChange = edNameChange
  end
end

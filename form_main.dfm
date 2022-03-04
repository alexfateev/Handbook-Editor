object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1054#1054#1054' "'#1050#1091#1088#1075#1072#1085#1093#1080#1084#1084#1072#1096'"'
  ClientHeight = 746
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1063
    Height = 738
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Align = alClient
    CutCornerSize = 0
    ShowFocusRect = False
    TabOrder = 0
    TabStyle = tsCutCorner
    FixedDimension = 20
  end
  object FormState: TRzFormState
    Section = 'MainForm'
    RegIniFile = ModuleDB.ConfigIni
    Left = 582
    Top = 220
  end
end

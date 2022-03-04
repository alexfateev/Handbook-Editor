object fmLogin: TfmLogin
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 146
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 88
    Height = 16
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
  end
  object Label2: TLabel
    Left = 8
    Top = 52
    Width = 48
    Height = 16
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Label3: TLabel
    Left = 56
    Top = 168
    Width = 261
    Height = 16
    Caption = #1055#1072#1088#1086#1083#1100' '#1073#1091#1076#1077#1090' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085' '#1087#1088#1080' '#1087#1077#1088#1074#1086#1084' '#1074#1093#1086#1076#1077
    Visible = False
  end
  object edUser: TRzComboBox
    Left = 8
    Top = 22
    Width = 249
    Height = 24
    AllowEdit = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = edUserChange
  end
  object edPass: TRzEdit
    Left = 8
    Top = 70
    Width = 249
    Height = 24
    Text = 'dfgdf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object btOk: TButton
    Left = 176
    Top = 110
    Width = 81
    Height = 28
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 2
    OnClick = btOkClick
  end
  object RzCheckBox1: TRzCheckBox
    Left = 16
    Top = 100
    Width = 128
    Height = 18
    Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbUnchecked
    TabOrder = 3
    Visible = False
  end
end

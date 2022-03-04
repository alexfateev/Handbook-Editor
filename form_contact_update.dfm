object fmContactUpdate: TfmContactUpdate
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1082#1086#1085#1090#1072#1082#1090#1072
  ClientHeight = 234
  ClientWidth = 457
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
  PixelsPerInch = 96
  TextHeight = 13
  object RzDBLabel1: TRzDBLabel
    Left = 288
    Top = 144
    Width = 65
    Height = 17
    Visible = False
    DataSource = fmHandbook.srcContacts
  end
  object edName_f: TRzEdit
    Left = 120
    Top = 8
    Width = 329
    Height = 21
    Text = ''
    TabOrder = 0
  end
  object edName_i: TRzEdit
    Left = 120
    Top = 35
    Width = 329
    Height = 21
    Text = ''
    TabOrder = 1
  end
  object edName_o: TRzEdit
    Left = 120
    Top = 62
    Width = 329
    Height = 21
    Text = ''
    TabOrder = 2
  end
  object edProf: TRzEdit
    Left = 120
    Top = 89
    Width = 329
    Height = 21
    Text = ''
    TabOrder = 3
  end
  object edDateBorn: TRzDateTimePicker
    Left = 120
    Top = 143
    Width = 105
    Height = 21
    Date = 41607.561420810180000000
    Format = ''
    Time = 41607.561420810180000000
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 197
    Width = 457
    Height = 37
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkFlat
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 5
    object btUpdate: TButton
      Left = 302
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 0
      OnClick = btUpdateClick
    end
    object btCancel: TButton
      Left = 377
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = btCancelClick
    end
  end
  object cbName_f: TRzCheckBox
    Left = 8
    Top = 10
    Width = 63
    Height = 15
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = cbName_fClick
  end
  object cbName_i: TRzCheckBox
    Left = 8
    Top = 37
    Width = 38
    Height = 15
    Caption = #1048#1084#1103
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = cbName_iClick
  end
  object cbName_o: TRzCheckBox
    Left = 8
    Top = 64
    Width = 68
    Height = 15
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = cbName_oClick
  end
  object cbProf: TRzCheckBox
    Left = 8
    Top = 91
    Width = 74
    Height = 15
    Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
    Checked = True
    State = cbChecked
    TabOrder = 9
    OnClick = cbProfClick
  end
  object cbDateBorn: TRzCheckBox
    Left = 8
    Top = 145
    Width = 99
    Height = 15
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = cbDateBornClick
  end
  object cbNameSave: TRzCheckBox
    Left = 8
    Top = 118
    Width = 88
    Height = 15
    Caption = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103
    Checked = True
    State = cbChecked
    TabOrder = 11
    OnClick = cbNameSaveClick
  end
  object edNameSave: TRzComboBox
    Left = 120
    Top = 116
    Width = 329
    Height = 21
    TabOrder = 12
    OnDropDown = edNameSaveDropDown
  end
  object cbContIsDelete: TRzCheckBox
    Left = 8
    Top = 172
    Width = 129
    Height = 15
    Caption = #1055#1086#1084#1077#1095#1077#1085' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
    State = cbUnchecked
    TabOrder = 13
  end
end

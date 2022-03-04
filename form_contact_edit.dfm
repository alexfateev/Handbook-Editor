object fmContactEdit: TfmContactEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmContactEdit'
  ClientHeight = 322
  ClientWidth = 512
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
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 502
    Height = 282
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    CutCornerSize = 0
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsCutCorner
    OnChange = RzPageControl1Change
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1054#1073#1097#1077#1077
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 48
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object Label2: TLabel
        Left = 172
        Top = 16
        Width = 23
        Height = 13
        Caption = #1048#1084#1103':'
      end
      object Label3: TLabel
        Left = 328
        Top = 16
        Width = 53
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      end
      object Label4: TLabel
        Left = 16
        Top = 62
        Width = 126
        Height = 13
        Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103' ('#1076#1086#1083#1078#1085#1086#1089#1090#1100'):'
      end
      object Label5: TLabel
        Left = 16
        Top = 108
        Width = 130
        Height = 13
        Caption = #1043#1088#1091#1087#1087#1072' ('#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077'):'
      end
      object Label6: TLabel
        Left = 16
        Top = 154
        Width = 67
        Height = 13
        Caption = #1061#1088#1072#1085#1080#1090#1100' '#1082#1072#1082':'
      end
      object Label7: TLabel
        Left = 383
        Top = 200
        Width = 84
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
      end
      object edName_f: TRzDBEdit
        Left = 16
        Top = 35
        Width = 150
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_name_f'
        TabOrder = 0
      end
      object edName_i: TRzDBEdit
        Left = 172
        Top = 35
        Width = 150
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_name_i'
        TabOrder = 1
      end
      object edName_o: TRzDBEdit
        Left = 328
        Top = 35
        Width = 150
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_name_o'
        TabOrder = 2
      end
      object edProf: TRzDBEdit
        Left = 16
        Top = 81
        Width = 462
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_prof'
        TabOrder = 3
      end
      object edUnit: TRzComboBox
        Left = 16
        Top = 127
        Width = 462
        Height = 21
        AllowEdit = False
        TabOrder = 4
        OnChange = edNameSaveChange
      end
      object edNameSave: TRzDBComboBox
        Left = 16
        Top = 173
        Width = 462
        Height = 21
        DataField = 'cont_name_save'
        DataSource = fmHandbook.srcContacts
        TabOrder = 5
        OnChange = edNameSaveChange
        OnDropDown = edNameSaveDropDown
      end
      object edDateBorn: TRzDBDateTimePicker
        Left = 366
        Top = 219
        Width = 112
        Height = 21
        Date = 41605.375314502310000000
        Format = ''
        Time = 41605.375314502310000000
        ShowCheckbox = True
        TabOrder = 6
        DataField = 'cont_date_born'
        DataSource = fmHandbook.srcContacts
      end
      object RzDBCheckBox1: TRzDBCheckBox
        Left = 17
        Top = 208
        Width = 129
        Height = 15
        DataField = 'cont_is_delete'
        DataSource = fmHandbook.srcContacts
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = #1055#1086#1084#1077#1095#1077#1085' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
        TabOrder = 7
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      object Label8: TLabel
        Left = 16
        Top = 18
        Width = 54
        Height = 13
        Caption = #1069#1083'. '#1087#1086#1095#1090#1072':'
      end
      object Label9: TLabel
        Left = 16
        Top = 45
        Width = 76
        Height = 13
        Caption = #1048#1084#1103' '#1101#1083'. '#1087#1086#1095#1090#1099':'
      end
      object Label10: TLabel
        Left = 16
        Top = 85
        Width = 58
        Height = 13
        Caption = #1043#1086#1088#1086#1076#1089#1082#1086#1081':'
      end
      object Label11: TLabel
        Left = 16
        Top = 112
        Width = 64
        Height = 13
        Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081':'
      end
      object Label12: TLabel
        Left = 16
        Top = 139
        Width = 62
        Height = 13
        Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081':'
      end
      object Label13: TLabel
        Left = 16
        Top = 166
        Width = 29
        Height = 13
        Caption = #1060#1072#1082#1089':'
      end
      object edEmail: TRzDBEdit
        Left = 120
        Top = 15
        Width = 361
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_email'
        TabOrder = 0
        OnChange = edEmailChange
      end
      object edEmailName: TRzDBComboBox
        Left = 120
        Top = 42
        Width = 361
        Height = 21
        DataField = 'cont_email_name'
        DataSource = fmHandbook.srcContacts
        TabOrder = 1
        OnDropDown = edEmailNameDropDown
      end
      object edTelWork: TRzDBEdit
        Left = 120
        Top = 82
        Width = 361
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_tel_work'
        TabOrder = 2
      end
      object edTelWork2: TRzDBEdit
        Left = 120
        Top = 109
        Width = 361
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_tel_work2'
        TabOrder = 3
      end
      object edTelMobile: TRzDBEdit
        Left = 120
        Top = 136
        Width = 361
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_tel_mobile'
        TabOrder = 4
      end
      object edTelFax: TRzDBEdit
        Left = 120
        Top = 163
        Width = 361
        Height = 21
        DataSource = fmHandbook.srcContacts
        DataField = 'cont_tel_fax'
        TabOrder = 5
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = #1047#1072#1084#1077#1090#1082#1080
      object edNote: TRzDBMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 492
        Height = 252
        Align = alClient
        DataField = 'cont_note'
        DataSource = fmHandbook.srcContacts
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 292
    Width = 512
    Height = 30
    Align = alBottom
    BorderOuter = fsNone
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object RzDBLabel1: TRzDBLabel
      Left = 232
      Top = 3
      Width = 65
      Height = 17
      Visible = False
      DataSource = fmHandbook.srcUnits
    end
    object btOk: TRzButton
      Left = 357
      Top = 0
      Align = alRight
      Caption = #1054#1082
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TRzButton
      Left = 432
      Top = 0
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = btCancelClick
    end
  end
  object Units: TUniTable
    TableName = 'units'
    OrderFields = 'unit_name_short'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 246
    Top = 234
  end
end

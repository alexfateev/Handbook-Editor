object fmFeedbackEdit: TfmFeedbackEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmFeedbackEdit'
  ClientHeight = 585
  ClientWidth = 744
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
  object Panel1: TPanel
    Left = 0
    Top = 550
    Width = 744
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 7
    Padding.Bottom = 5
    TabOrder = 0
    object btFeedCancel: TButton
      Left = 5
      Top = 5
      Width = 116
      Height = 25
      Align = alLeft
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
      TabOrder = 0
      OnClick = btFeedCancelClick
    end
    object btFeedComplete: TButton
      Left = 540
      Top = 5
      Width = 122
      Height = 25
      Align = alRight
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
      TabOrder = 1
      OnClick = btFeedCompleteClick
    end
    object Button3: TButton
      Left = 662
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 734
    Height = 542
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    ActivePage = TabSheet3
    ActivePageDefault = TabSheet2
    Align = alClient
    CutCornerSize = 0
    TabIndex = 2
    TabOrder = 1
    TabStyle = tsCutCorner
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1079#1072#1103#1074#1082#1077
      object RzGroupBox3: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 720
        Height = 76
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1054#1073#1097#1080#1077':'
        GroupStyle = gsUnderline
        TabOrder = 0
        object RzDBStatusPane13: TRzDBStatusPane
          Left = 0
          Top = 17
          Width = 720
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
          DataField = 'feed_date_create'
          DataSource = DSF
          ExplicitLeft = 16
          ExplicitTop = 11
          ExplicitWidth = 566
        end
        object RzDBStatusPane14: TRzDBStatusPane
          Left = 0
          Top = 37
          Width = 720
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103':'
          DataField = 'feed_date_close'
          DataSource = DSF
          ExplicitWidth = 566
        end
        object RzDBStatusPane15: TRzDBStatusPane
          Left = 0
          Top = 57
          Width = 720
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1050#1077#1084' '#1079#1072#1082#1088#1099#1090#1072':'
          DataField = 'user_name'
          DataSource = DSF
          ExplicitTop = 51
          ExplicitWidth = 566
        end
      end
      object RzGroupBox4: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 91
        Width = 720
        Height = 56
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1047#1072#1103#1074#1080#1090#1077#1083#1100':'
        GroupStyle = gsUnderline
        TabOrder = 1
        object RzDBStatusPane16: TRzDBStatusPane
          Left = 0
          Top = 17
          Width = 720
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1048#1084#1103':'
          DataField = 'feed_user_name'
          DataSource = DSF
          ExplicitLeft = 16
          ExplicitTop = 11
          ExplicitWidth = 566
        end
        object RzDBStatusPane17: TRzDBStatusPane
          Left = 0
          Top = 37
          Width = 720
          Hint = 'feed_user_contact'
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1050#1086#1085#1090#1072#1082#1090#1099#1085#1077' '#1076#1072#1085#1085#1099#1077':'
          DataField = 'feed_user_contact'
          DataSource = DSF
          ExplicitWidth = 566
        end
      end
      object RzGroupBox6: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 157
        Width = 720
        Height = 130
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
        GroupStyle = gsUnderline
        TabOrder = 2
        object edComment: TRzDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 714
          Height = 107
          Align = alClient
          Color = clWhite
          DataField = 'feed_user_comment'
          DataSource = DSF
          ScrollBars = ssVertical
          TabOrder = 0
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
      object RzGroupBox1: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 720
        Height = 216
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
        GroupStyle = gsUnderline
        TabOrder = 0
        object Label1: TLabel
          Left = 407
          Top = 33
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label2: TLabel
          Left = 407
          Top = 60
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label3: TLabel
          Left = 407
          Top = 114
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label4: TLabel
          Left = 407
          Top = 87
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label5: TLabel
          Left = 407
          Top = 195
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label6: TLabel
          Left = 407
          Top = 168
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label7: TLabel
          Left = 407
          Top = 141
          Width = 12
          Height = 13
          Caption = '->'
        end
        object edName_f: TRzDBEdit
          Tag = 201
          Left = 425
          Top = 30
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_f'
          TabOrder = 0
        end
        object cbName_f: TRzCheckBox
          Tag = 1
          Left = 16
          Top = 32
          Width = 63
          Height = 15
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = cbName_fClick
        end
        object edName_f_curr: TRzDBEdit
          Tag = 101
          Left = 121
          Top = 30
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_name_i'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 2
        end
        object edName_i_curr: TRzDBEdit
          Tag = 102
          Left = 121
          Top = 57
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_name_i'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 3
        end
        object cbName_i: TRzCheckBox
          Tag = 2
          Left = 16
          Top = 59
          Width = 38
          Height = 15
          Caption = #1048#1084#1103
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = cbName_fClick
        end
        object cbName_o: TRzCheckBox
          Tag = 3
          Left = 16
          Top = 86
          Width = 68
          Height = 15
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = cbName_fClick
        end
        object edname_o_curr: TRzDBEdit
          Tag = 103
          Left = 121
          Top = 84
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_name_o'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 6
        end
        object edProf_curr: TRzDBEdit
          Tag = 104
          Left = 121
          Top = 111
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_prof'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 7
        end
        object cbProf: TRzCheckBox
          Tag = 4
          Left = 16
          Top = 113
          Width = 74
          Height = 15
          Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
          Checked = True
          State = cbChecked
          TabOrder = 8
          OnClick = cbName_fClick
        end
        object cbUnit: TRzCheckBox
          Tag = 5
          Left = 16
          Top = 138
          Width = 99
          Height = 15
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
          Checked = True
          State = cbChecked
          TabOrder = 9
          OnClick = cbName_fClick
        end
        object cbName_save: TRzCheckBox
          Tag = 6
          Left = 16
          Top = 167
          Width = 88
          Height = 15
          Caption = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = cbName_fClick
        end
        object edName_save_curr: TRzDBEdit
          Tag = 106
          Left = 121
          Top = 165
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_name_save'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 11
        end
        object cbDate_born: TRzCheckBox
          Tag = 7
          Left = 16
          Top = 194
          Width = 99
          Height = 15
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Checked = True
          State = cbChecked
          TabOrder = 12
          OnClick = cbName_fClick
        end
        object edDate_born_curr: TRzDBEdit
          Tag = 107
          Left = 121
          Top = 192
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_date_born'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 13
        end
        object edUnit_curr: TRzDBEdit
          Tag = 105
          Left = 121
          Top = 138
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'unit_name_full'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 14
        end
        object edName_i: TRzDBEdit
          Tag = 202
          Left = 425
          Top = 57
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_i'
          TabOrder = 15
        end
        object edName_o: TRzDBEdit
          Tag = 203
          Left = 425
          Top = 84
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_o'
          TabOrder = 16
        end
        object edProf: TRzDBEdit
          Tag = 204
          Left = 425
          Top = 111
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_prof'
          TabOrder = 17
        end
        object edName_save: TRzDBEdit
          Tag = 206
          Left = 425
          Top = 165
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_save'
          TabOrder = 18
        end
        object edUnit: TRzComboBox
          Tag = 205
          Left = 425
          Top = 138
          Width = 280
          Height = 21
          AllowEdit = False
          TabOrder = 19
        end
        object RzDBDateTimePicker1: TRzDBDateTimePicker
          Tag = 207
          Left = 425
          Top = 192
          Width = 280
          Height = 21
          Date = 41610.531486400460000000
          Format = ''
          Time = 41610.531486400460000000
          ShowCheckbox = True
          TabOrder = 20
          DataField = 'feed_cont_date_born'
          DataSource = DSF
        end
      end
      object RzGroupBox2: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 226
        Width = 720
        Height = 159
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077':'
        GroupStyle = gsUnderline
        TabOrder = 1
        object Label8: TLabel
          Left = 407
          Top = 30
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label9: TLabel
          Left = 407
          Top = 57
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label10: TLabel
          Left = 407
          Top = 84
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label11: TLabel
          Left = 407
          Top = 111
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label12: TLabel
          Left = 407
          Top = 135
          Width = 12
          Height = 13
          Caption = '->'
        end
        object RzDBEdit8: TRzDBEdit
          Tag = 108
          Left = 121
          Top = 27
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_email'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 0
        end
        object RzCheckBox7: TRzCheckBox
          Tag = 8
          Left = 16
          Top = 29
          Width = 69
          Height = 15
          Caption = #1069#1083'. '#1087#1086#1095#1090#1072
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = cbName_fClick
        end
        object RzCheckBox8: TRzCheckBox
          Tag = 9
          Left = 16
          Top = 56
          Width = 73
          Height = 15
          Caption = #1043#1086#1088#1086#1076#1089#1082#1086#1081
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = cbName_fClick
        end
        object RzDBEdit9: TRzDBEdit
          Tag = 109
          Left = 121
          Top = 54
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_tel_work'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 3
        end
        object RzDBEdit10: TRzDBEdit
          Tag = 110
          Left = 121
          Top = 81
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_tel_work2'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 4
        end
        object RzCheckBox9: TRzCheckBox
          Tag = 10
          Left = 16
          Top = 83
          Width = 79
          Height = 15
          Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = cbName_fClick
        end
        object RzCheckBox10: TRzCheckBox
          Tag = 11
          Left = 16
          Top = 110
          Width = 77
          Height = 15
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = cbName_fClick
        end
        object RzDBEdit11: TRzDBEdit
          Tag = 111
          Left = 121
          Top = 108
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_tel_mobile'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 7
        end
        object RzDBEdit12: TRzDBEdit
          Tag = 112
          Left = 121
          Top = 135
          Width = 280
          Height = 21
          DataSource = DSC
          DataField = 'cont_tel_fax'
          ReadOnly = True
          Color = clInfoBk
          TabOrder = 8
        end
        object RzCheckBox11: TRzCheckBox
          Tag = 12
          Left = 16
          Top = 137
          Width = 44
          Height = 15
          Caption = #1060#1072#1082#1089
          Checked = True
          State = cbChecked
          TabOrder = 9
          OnClick = cbName_fClick
        end
        object RzDBEdit1: TRzDBEdit
          Tag = 208
          Left = 425
          Top = 27
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_email'
          TabOrder = 10
        end
        object RzDBEdit2: TRzDBEdit
          Tag = 209
          Left = 425
          Top = 54
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_work'
          TabOrder = 11
        end
        object RzDBEdit3: TRzDBEdit
          Tag = 211
          Left = 425
          Top = 108
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_mobile'
          TabOrder = 12
        end
        object RzDBEdit4: TRzDBEdit
          Tag = 210
          Left = 425
          Top = 81
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_work2'
          TabOrder = 13
        end
        object RzDBEdit5: TRzDBEdit
          Tag = 212
          Left = 425
          Top = 135
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_fax'
          TabOrder = 14
        end
      end
      object RzGroupBox5: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 390
        Width = 720
        Height = 123
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086':'
        GroupStyle = gsUnderline
        TabOrder = 2
        object Label13: TLabel
          Left = 407
          Top = 27
          Width = 12
          Height = 13
          Caption = '->'
          Layout = tlCenter
        end
        object RzCheckBox13: TRzCheckBox
          Tag = 13
          Left = 16
          Top = 29
          Width = 61
          Height = 15
          Caption = #1047#1072#1084#1077#1090#1082#1080
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = cbName_fClick
        end
        object RzDBMemo1: TRzDBMemo
          Tag = 113
          Left = 121
          Top = 27
          Width = 280
          Height = 89
          Color = clInfoBk
          DataField = 'cont_note'
          DataSource = DSC
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object RzDBMemo2: TRzDBMemo
          Tag = 213
          Left = 425
          Top = 27
          Width = 280
          Height = 89
          Color = clWhite
          DataField = 'feed_cont_note'
          DataSource = DSF
          ScrollBars = ssVertical
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1076#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1079#1072#1103#1074#1082#1080
      object RzGroupBox7: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 720
        Height = 216
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
        GroupStyle = gsUnderline
        TabOrder = 0
        object Label14: TLabel
          Left = 407
          Top = 33
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label15: TLabel
          Left = 407
          Top = 60
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label16: TLabel
          Left = 407
          Top = 114
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label17: TLabel
          Left = 407
          Top = 87
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label18: TLabel
          Left = 407
          Top = 195
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label19: TLabel
          Left = 407
          Top = 168
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label20: TLabel
          Left = 407
          Top = 141
          Width = 12
          Height = 13
          Caption = '->'
        end
        object RzDBEdit6: TRzDBEdit
          Tag = 201
          Left = 425
          Top = 30
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_f_old'
          TabOrder = 0
        end
        object RzDBEdit19: TRzDBEdit
          Tag = 202
          Left = 425
          Top = 57
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_i_old'
          TabOrder = 1
        end
        object RzDBEdit20: TRzDBEdit
          Tag = 203
          Left = 425
          Top = 84
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_o_old'
          TabOrder = 2
        end
        object RzDBEdit21: TRzDBEdit
          Tag = 204
          Left = 425
          Top = 111
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_prof_old'
          TabOrder = 3
        end
        object RzDBEdit22: TRzDBEdit
          Tag = 206
          Left = 425
          Top = 165
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_save_old'
          TabOrder = 4
        end
        object RzComboBox1: TRzComboBox
          Tag = 205
          Left = 425
          Top = 138
          Width = 280
          Height = 21
          AllowEdit = False
          TabOrder = 5
        end
        object RzDBDateTimePicker2: TRzDBDateTimePicker
          Tag = 207
          Left = 425
          Top = 192
          Width = 280
          Height = 21
          Date = 41610.531486400460000000
          Format = ''
          Time = 41610.531486400460000000
          ShowCheckbox = True
          TabOrder = 6
          DataField = 'feed_cont_date_born_old'
          DataSource = DSF
        end
      end
      object RzGroupBox8: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 226
        Width = 720
        Height = 159
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077':'
        GroupStyle = gsUnderline
        TabOrder = 1
        object Label21: TLabel
          Left = 407
          Top = 30
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label22: TLabel
          Left = 407
          Top = 57
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label23: TLabel
          Left = 407
          Top = 84
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label24: TLabel
          Left = 407
          Top = 111
          Width = 12
          Height = 13
          Caption = '->'
        end
        object Label25: TLabel
          Left = 407
          Top = 135
          Width = 12
          Height = 13
          Caption = '->'
        end
        object RzDBEdit28: TRzDBEdit
          Tag = 208
          Left = 425
          Top = 27
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_email_old'
          TabOrder = 0
        end
        object RzDBEdit29: TRzDBEdit
          Tag = 209
          Left = 425
          Top = 54
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_work_old'
          TabOrder = 1
        end
        object RzDBEdit30: TRzDBEdit
          Tag = 211
          Left = 425
          Top = 108
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_mobile_old'
          TabOrder = 2
        end
        object RzDBEdit31: TRzDBEdit
          Tag = 210
          Left = 425
          Top = 81
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_work2_old'
          TabOrder = 3
        end
        object RzDBEdit32: TRzDBEdit
          Tag = 212
          Left = 425
          Top = 135
          Width = 280
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_fax_old'
          TabOrder = 4
        end
      end
      object RzGroupBox9: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 390
        Width = 720
        Height = 123
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086':'
        GroupStyle = gsUnderline
        TabOrder = 2
        object Label26: TLabel
          Left = 407
          Top = 27
          Width = 12
          Height = 13
          Caption = '->'
          Layout = tlCenter
        end
        object RzDBMemo4: TRzDBMemo
          Left = 425
          Top = 27
          Width = 280
          Height = 89
          Color = clWhite
          DataField = 'feed_cont_note_old'
          DataSource = DSF
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object DSF: TUniDataSource
    DataSet = fmFeedback.memFeedback
    Left = 270
    Top = 402
  end
  object DSC: TUniDataSource
    DataSet = fmFeedback.Contacts
    Left = 195
    Top = 400
  end
  object Units: TUniTable
    TableName = 'units'
    OrderFields = 'unit_name_full'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 427
    Top = 404
  end
end

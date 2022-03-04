object fmFeedbackInsert: TfmFeedbackInsert
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmFeedbackInsert'
  ClientHeight = 635
  ClientWidth = 510
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
    Top = 600
    Width = 510
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
      Left = 306
      Top = 5
      Width = 122
      Height = 25
      Align = alRight
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
      TabOrder = 1
      OnClick = btFeedCompleteClick
    end
    object Button3: TButton
      Left = 428
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
    Width = 500
    Height = 592
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    ActivePage = TabSheet2
    ActivePageDefault = TabSheet2
    Align = alClient
    CutCornerSize = 0
    TabIndex = 1
    TabOrder = 1
    TabStyle = tsCutCorner
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1079#1072#1103#1074#1082#1077
      object RzGroupBox3: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 486
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
          Width = 486
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
          Width = 486
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
          Width = 486
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
        Width = 486
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
          Width = 486
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
          Width = 486
          Hint = 'feed'#31'_user_contact'
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
        Width = 486
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
          Width = 480
          Height = 107
          Align = alClient
          Color = clWhite
          DataField = 'feed_user_comment'
          DataSource = fmFeedback.srcFeedback
          ScrollBars = ssVertical
          TabOrder = 0
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
      object RzGroupBox1: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 486
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
          Left = 16
          Top = 33
          Width = 44
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103
        end
        object Label2: TLabel
          Left = 16
          Top = 60
          Width = 19
          Height = 13
          Caption = #1048#1084#1103
        end
        object Label3: TLabel
          Left = 16
          Top = 87
          Width = 49
          Height = 13
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        end
        object Label4: TLabel
          Left = 16
          Top = 114
          Width = 57
          Height = 13
          Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        end
        object Label5: TLabel
          Left = 16
          Top = 141
          Width = 80
          Height = 13
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
        end
        object Label6: TLabel
          Left = 16
          Top = 168
          Width = 69
          Height = 13
          Caption = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103
        end
        object Label7: TLabel
          Left = 16
          Top = 194
          Width = 80
          Height = 13
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        end
        object edName_f_curr: TRzDBEdit
          Tag = 101
          Left = 121
          Top = 30
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_f'
          Color = clWhite
          TabOrder = 0
        end
        object edName_i_curr: TRzDBEdit
          Tag = 102
          Left = 121
          Top = 57
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_i'
          Color = clWhite
          TabOrder = 1
        end
        object edname_o_curr: TRzDBEdit
          Tag = 103
          Left = 121
          Top = 84
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_o'
          Color = clWhite
          TabOrder = 2
        end
        object edProf_curr: TRzDBEdit
          Tag = 104
          Left = 121
          Top = 111
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_prof'
          Color = clWhite
          TabOrder = 3
        end
        object edName_save_curr: TRzDBEdit
          Tag = 106
          Left = 121
          Top = 165
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_name_save'
          Color = clWhite
          TabOrder = 4
        end
        object RzDBDateTimePicker1: TRzDBDateTimePicker
          Tag = 107
          Left = 121
          Top = 192
          Width = 350
          Height = 21
          Date = 41610.497507303240000000
          Format = ''
          Time = 41610.497507303240000000
          TabOrder = 5
          DataField = 'feed_cont_date_born'
          DataSource = DSF
        end
        object edUnit: TRzComboBox
          Tag = 105
          Left = 121
          Top = 138
          Width = 350
          Height = 21
          TabOrder = 6
        end
      end
      object RzGroupBox2: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 226
        Width = 486
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
          Left = 16
          Top = 30
          Width = 50
          Height = 13
          Caption = #1069#1083'. '#1087#1086#1095#1090#1072
        end
        object Label9: TLabel
          Left = 16
          Top = 57
          Width = 54
          Height = 13
          Caption = #1043#1086#1088#1086#1076#1089#1082#1086#1081
        end
        object Label10: TLabel
          Left = 16
          Top = 84
          Width = 60
          Height = 13
          Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081
        end
        object Label11: TLabel
          Left = 16
          Top = 111
          Width = 58
          Height = 13
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
        end
        object Label12: TLabel
          Left = 16
          Top = 138
          Width = 25
          Height = 13
          Caption = #1060#1072#1082#1089
        end
        object RzDBEdit8: TRzDBEdit
          Tag = 108
          Left = 121
          Top = 27
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_email'
          Color = clWhite
          TabOrder = 0
        end
        object RzDBEdit9: TRzDBEdit
          Tag = 109
          Left = 121
          Top = 54
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_work'
          Color = clWhite
          TabOrder = 1
        end
        object RzDBEdit10: TRzDBEdit
          Tag = 110
          Left = 121
          Top = 81
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_work2'
          Color = clWhite
          TabOrder = 2
        end
        object RzDBEdit11: TRzDBEdit
          Tag = 111
          Left = 121
          Top = 108
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_mobile'
          Color = clWhite
          TabOrder = 3
        end
        object RzDBEdit12: TRzDBEdit
          Tag = 112
          Left = 121
          Top = 135
          Width = 350
          Height = 21
          DataSource = DSF
          DataField = 'feed_cont_tel_fax'
          Color = clWhite
          TabOrder = 4
        end
      end
      object RzGroupBox5: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 390
        Width = 486
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
          Left = 16
          Top = 30
          Width = 42
          Height = 13
          Caption = #1047#1072#1084#1077#1090#1082#1080
        end
        object RzDBMemo1: TRzDBMemo
          Tag = 113
          Left = 121
          Top = 27
          Width = 350
          Height = 89
          Color = clWhite
          DataField = 'feed_cont_note'
          DataSource = DSF
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object DSF: TUniDataSource
    DataSet = fmFeedback.memFeedback
    Left = 94
    Top = 490
  end
  object DSC: TUniDataSource
    DataSet = fmFeedback.Contacts
    Left = 35
    Top = 480
  end
  object Units: TUniTable
    TableName = 'units'
    OrderFields = 'unit_name_full'
    Connection = ModuleDB.ConnectionMYSQL
    Left = 131
    Top = 540
  end
end

object fmFeedbackDelete: TfmFeedbackDelete
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmFeedbackDelete'
  ClientHeight = 570
  ClientWidth = 586
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 535
    Width = 586
    Height = 35
    Align = alBottom
    BorderOuter = fsFlat
    BorderSides = []
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 7
    Padding.Bottom = 5
    TabOrder = 0
    object DBC: TRzDBLabel
      Left = 208
      Top = 3
      Width = 33
      Height = 14
      Visible = False
      DataSource = fmFeedback.srcConacts
    end
    object DBF: TRzDBLabel
      Left = 247
      Top = 3
      Width = 33
      Height = 14
      Visible = False
      DataSource = fmFeedback.srcFeedback
    end
    object btFeedComplete: TButton
      Left = 381
      Top = 5
      Width = 123
      Height = 25
      Align = alRight
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
      TabOrder = 0
      OnClick = btFeedCompleteClick
    end
    object btClose: TButton
      Left = 504
      Top = 5
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = btCloseClick
    end
    object btFeedCancel: TButton
      Left = 5
      Top = 5
      Width = 115
      Height = 25
      Align = alLeft
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
      TabOrder = 2
      OnClick = btFeedCancelClick
    end
  end
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 576
    Height = 530
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 0
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
        Width = 562
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
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
          DataField = 'feed_date_create'
          DataSource = fmFeedback.srcFeedback
          ExplicitLeft = 16
          ExplicitTop = 11
          ExplicitWidth = 566
        end
        object RzDBStatusPane14: TRzDBStatusPane
          Left = 0
          Top = 37
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103':'
          DataField = 'feed_date_close'
          DataSource = fmFeedback.srcFeedback
          ExplicitWidth = 566
        end
        object RzDBStatusPane15: TRzDBStatusPane
          Left = 0
          Top = 57
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1050#1077#1084' '#1079#1072#1082#1088#1099#1090#1072':'
          DataField = 'user_name'
          DataSource = fmFeedback.srcFeedback
          ExplicitTop = 51
          ExplicitWidth = 566
        end
      end
      object RzGroupBox4: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 91
        Width = 562
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
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1048#1084#1103':'
          DataField = 'feed_user_name'
          DataSource = fmFeedback.srcFeedback
          ExplicitLeft = 16
          ExplicitTop = 11
          ExplicitWidth = 566
        end
        object RzDBStatusPane17: TRzDBStatusPane
          Left = 0
          Top = 37
          Width = 562
          Hint = 'feed_user_contact'
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1050#1086#1085#1090#1072#1082#1090#1099#1085#1077' '#1076#1072#1085#1085#1099#1077':'
          DataField = 'feed_user_contact'
          DataSource = DSF
          ExplicitWidth = 566
        end
      end
      object RzGroupBox5: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 157
        Width = 562
        Height = 130
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1055#1088#1080#1095#1080#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1103':'
        GroupStyle = gsUnderline
        TabOrder = 2
        object edCommentDelete: TRzDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 556
          Height = 107
          Align = alClient
          DataField = 'feed_delete_note'
          DataSource = fmFeedback.srcFeedback
          ScrollBars = ssVertical
          TabOrder = 0
          ReadOnlyColor = clBtnFace
          ReadOnlyColorOnFocus = True
        end
      end
      object RzGroupBox6: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 297
        Width = 562
        Height = 130
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
        GroupStyle = gsUnderline
        TabOrder = 3
        object edComment: TRzDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 556
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
      Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1082#1086#1085#1090#1072#1082#1090#1077
      object RzGroupBox1: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 562
        Height = 156
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1054#1073#1097#1080#1077':'
        GroupStyle = gsUnderline
        TabOrder = 0
        object RzDBStatusPane1: TRzDBStatusPane
          Left = 0
          Top = 17
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1060#1072#1084#1080#1083#1080#1103':'
          DataField = 'cont_name_f'
          DataSource = fmFeedback.srcConacts
          ExplicitLeft = 16
          ExplicitTop = 11
          ExplicitWidth = 566
        end
        object RzDBStatusPane2: TRzDBStatusPane
          Left = 0
          Top = 37
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1048#1084#1103':'
          DataField = 'cont_name_i'
          DataSource = fmFeedback.srcConacts
          ExplicitWidth = 566
        end
        object RzDBStatusPane3: TRzDBStatusPane
          Left = 0
          Top = 57
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1054#1090#1095#1077#1089#1090#1074#1086':'
          DataField = 'cont_name_o'
          DataSource = fmFeedback.srcConacts
          ExplicitLeft = 128
          ExplicitTop = 176
          ExplicitWidth = 100
        end
        object RzDBStatusPane4: TRzDBStatusPane
          Left = 0
          Top = 77
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1055#1088#1086#1092#1077#1089#1089#1080#1103':'
          DataField = 'cont_prof'
          DataSource = fmFeedback.srcConacts
          ExplicitTop = 129
          ExplicitWidth = 566
        end
        object RzDBStatusPane5: TRzDBStatusPane
          Left = 0
          Top = 97
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
          DataField = 'unit_name_full'
          DataSource = fmFeedback.srcConacts
          ExplicitTop = 123
          ExplicitWidth = 566
        end
        object RzDBStatusPane6: TRzDBStatusPane
          Left = 0
          Top = 117
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1061#1088#1072#1085#1080#1084#1086#1077' '#1080#1084#1103':'
          DataField = 'cont_name_save'
          DataSource = fmFeedback.srcConacts
          ExplicitLeft = 16
          ExplicitTop = 169
          ExplicitWidth = 566
        end
        object RzDBStatusPane12: TRzDBStatusPane
          Left = 0
          Top = 137
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
          DataField = 'cont_date_born'
          DataSource = fmFeedback.srcConacts
          ExplicitLeft = -5
          ExplicitTop = 163
          ExplicitWidth = 566
        end
      end
      object RzGroupBox2: TRzGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 171
        Width = 562
        Height = 116
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077':'
        GroupStyle = gsUnderline
        TabOrder = 1
        object RzDBStatusPane7: TRzDBStatusPane
          Left = 0
          Top = 17
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1069#1083'. '#1087#1086#1095#1090#1072':'
          DataField = 'cont_email'
          DataSource = fmFeedback.srcConacts
          ExplicitLeft = 16
          ExplicitTop = 11
          ExplicitWidth = 566
        end
        object RzDBStatusPane8: TRzDBStatusPane
          Left = 0
          Top = 37
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1043#1086#1088#1086#1076#1089#1082#1086#1081':'
          DataField = 'cont_tel_work'
          DataSource = fmFeedback.srcConacts
          ExplicitWidth = 566
        end
        object RzDBStatusPane9: TRzDBStatusPane
          Left = 0
          Top = 57
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081':'
          DataField = 'cont_tel_work2'
          DataSource = fmFeedback.srcConacts
          ExplicitTop = 51
          ExplicitWidth = 566
        end
        object RzDBStatusPane10: TRzDBStatusPane
          Left = 0
          Top = 77
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1052#1086#1073#1080#1083#1100#1085#1099#1081':'
          DataField = 'cont_tel_mobile'
          DataSource = fmFeedback.srcConacts
          ExplicitTop = 129
          ExplicitWidth = 566
        end
        object RzDBStatusPane11: TRzDBStatusPane
          Left = 0
          Top = 97
          Width = 562
          Align = alTop
          ParentShowHint = False
          FieldLabel = #1060#1072#1082#1089':'
          DataField = 'cont_tel_fax'
          DataSource = fmFeedback.srcConacts
          ExplicitTop = 123
          ExplicitWidth = 566
        end
      end
    end
  end
  object DSF: TUniDataSource
    DataSet = fmFeedback.memFeedback
    Left = 118
    Top = 474
  end
  object DSC: TUniDataSource
    DataSet = fmFeedback.Contacts
    Left = 59
    Top = 464
  end
end

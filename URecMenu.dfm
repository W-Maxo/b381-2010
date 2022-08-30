object RecDial: TRecDial
  Left = 268
  Top = 126
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1076#1072#1085#1085#1099#1093' '#1089#1086#1084#1086#1087#1080#1089#1094#1072
  ClientHeight = 235
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 209
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1084#1086#1084#1077#1085#1090' '#1074#1088#1077#1084#1077#1085#1080' ('#1074' '#1089#1077#1082#1091#1085#1076#1072#1093')'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 203
    Height = 13
    Caption = #1050#1086#1085#1077#1095#1085#1099#1081' '#1084#1086#1084#1077#1085#1090' '#1074#1088#1077#1084#1077#1085#1080' ('#1074' '#1089#1077#1082#1091#1085#1076#1072#1093')'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 122
    Height = 13
    Caption = #1063#1080#1089#1083#1086' '#1090#1086#1095#1077#1082' ('#1087#1088#1080#1084#1077#1088#1085#1086')'
  end
  object Edit1: TEdit
    Left = 240
    Top = 24
    Width = 89
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 240
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 1
    Text = '100'
  end
  object Edit3: TEdit
    Left = 208
    Top = 88
    Width = 89
    Height = 21
    TabOrder = 2
    Text = '50'
  end
  object Button1: TButton
    Left = 232
    Top = 176
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 3
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 40
    Top = 144
    Width = 177
    Height = 17
    Caption = #1054#1090#1089#1095#1077#1090' '#1074#1088#1077#1084#1077#1085#1080' '#1086#1090' 0 '#1089#1077#1082#1091#1085#1076
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 40
    Top = 184
    Width = 97
    Height = 17
    Caption = #1058#1086#1082
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox3: TCheckBox
    Left = 40
    Top = 208
    Width = 97
    Height = 17
    Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077
    TabOrder = 6
  end
end

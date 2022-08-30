object NewSeries: TNewSeries
  Left = 244
  Top = 154
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1072#1103'  '#1089#1077#1088#1080#1103
  ClientHeight = 236
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnHide = FormHide
  OnShortCut = FormShortCut
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LNameSeries: TLabel
    Left = 135
    Top = 20
    Width = 51
    Height = 13
    Caption = #1048#1084#1103' '#1089#1077#1088#1080#1080
  end
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 123
    Height = 13
    Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1080#1084#1087#1091#1083#1100#1089#1072
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 147
    Height = 13
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1084#1077#1078#1076#1091' '#1080#1084#1087#1091#1083#1100#1089#1072#1084#1080
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 88
    Height = 13
    Caption = #1055#1077#1088#1077#1076' '#1080#1084#1087#1091#1083#1100#1089#1086#1084
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 80
    Height = 13
    Caption = #1055#1086#1089#1083#1077' '#1080#1084#1087#1091#1083#1100#1089#1072
  end
  object Label5: TLabel
    Left = 200
    Top = 48
    Width = 34
    Height = 13
    Caption = #1042#1088#1077#1084#1103':'
  end
  object Label6: TLabel
    Left = 304
    Top = 48
    Width = 67
    Height = 13
    Caption = #1063#1080#1089#1083#1086' '#1090#1086#1095#1077#1082':'
  end
  object Label7: TLabel
    Left = 32
    Top = 184
    Width = 105
    Height = 13
    Caption = #1063#1080#1089#1083#1086' '#1090#1086#1095#1077#1082' '#1085#1072' '#1086#1082#1085#1086
  end
  object EditName: TEdit
    Left = 200
    Top = 16
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 200
    Top = 64
    Width = 97
    Height = 21
    TabOrder = 1
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object Edit2: TEdit
    Left = 200
    Top = 88
    Width = 97
    Height = 21
    TabOrder = 2
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object Edit3: TEdit
    Left = 200
    Top = 112
    Width = 97
    Height = 21
    TabOrder = 3
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object Edit4: TEdit
    Left = 200
    Top = 136
    Width = 97
    Height = 21
    TabOrder = 4
    OnEnter = EditEnter
    OnExit = EditExit
  end
  object Edit5: TEdit
    Left = 304
    Top = 64
    Width = 72
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 304
    Top = 88
    Width = 72
    Height = 21
    Enabled = False
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 304
    Top = 112
    Width = 72
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 304
    Top = 136
    Width = 72
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object Edit9: TEdit
    Left = 200
    Top = 176
    Width = 97
    Height = 21
    TabOrder = 5
    OnEnter = EditEnter
    OnExit = Edit9Exit
  end
  object RzBitBtn2: TRzBitBtn
    Left = 353
    Top = 204
    ModalResult = 2
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 10
    ImageIndex = 18
    Images = Form1.ImageList2
  end
  object RzBitBtn1: TRzBitBtn
    Left = 353
    Top = 173
    ModalResult = 1
    Caption = 'OK'
    TabOrder = 11
    ImageIndex = 16
    Images = Form1.ImageList2
  end
end

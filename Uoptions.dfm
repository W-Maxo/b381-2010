object FOptions: TFOptions
  Left = 295
  Top = 241
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 209
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonOK: TButton
    Left = 191
    Top = 175
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    ModalResult = 1
    TabOrder = 0
    OnClick = ButtonOKClick
  end
  object ButtonCancel: TButton
    Left = 280
    Top = 175
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBoxCADC: TGroupBox
    Left = 11
    Top = 16
    Width = 353
    Height = 89
    Caption = #1050#1072#1085#1072#1083#1099' '#1040#1062#1055
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 37
      Width = 40
      Height = 13
      Caption = #1050#1072#1085#1072#1083' 1'
    end
    object Label2: TLabel
      Left = 16
      Top = 61
      Width = 40
      Height = 13
      Caption = #1050#1072#1085#1072#1083' 2'
    end
    object Label3: TLabel
      Left = 76
      Top = 16
      Width = 71
      Height = 13
      Caption = #1050#1086#1077#1092#1092#1080#1094#1080#1077#1085#1090
    end
    object Label4: TLabel
      Left = 168
      Top = 16
      Width = 49
      Height = 13
      Caption = #1052#1072#1082#1089#1080#1084#1091#1084
    end
    object Label6: TLabel
      Left = 256
      Top = 16
      Width = 44
      Height = 13
      Caption = #1052#1080#1085#1080#1084#1091#1084
    end
    object EditCoef1: TEdit
      Left = 75
      Top = 32
      Width = 70
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditCoefADCExit
    end
    object EditCoef2: TEdit
      Left = 75
      Top = 56
      Width = 70
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = EditEnter
      OnExit = EditCoefADCExit
    end
    object Edit1Max: TEdit
      Left = 160
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 2
      OnEnter = EditEnter
      OnExit = EditMaxMinExit
    end
    object Edit2Max: TEdit
      Left = 160
      Top = 56
      Width = 70
      Height = 21
      TabOrder = 3
      OnEnter = EditEnter
      OnExit = EditMaxMinExit
    end
    object Edit1Min: TEdit
      Left = 245
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 4
      OnEnter = EditEnter
      OnExit = EditMaxMinExit
    end
    object Edit2Min: TEdit
      Left = 245
      Top = 56
      Width = 70
      Height = 21
      TabOrder = 5
      OnEnter = EditEnter
      OnExit = EditMaxMinExit
    end
  end
  object GroupBoxCDAC: TGroupBox
    Left = 11
    Top = 112
    Width = 153
    Height = 57
    Caption = #1050#1072#1085#1072#1083' '#1062#1040#1055
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 22
      Width = 40
      Height = 13
      Caption = #1050#1072#1085#1072#1083' 1'
    end
    object EditCoeffDAC1: TEdit
      Left = 75
      Top = 16
      Width = 70
      Height = 21
      TabOrder = 0
      OnEnter = EditEnter
      OnExit = EditCoeffDACExit
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 170
    Top = 111
    Width = 196
    Height = 58
    Caption = #1044#1077#1089#1103#1090#1080#1095#1085#1099#1081' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100
    TabOrder = 4
    object RzRadioButton1: TRzRadioButton
      Left = 45
      Top = 24
      Width = 33
      Height = 18
      Caption = '"."'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RzRadioButton2: TRzRadioButton
      Left = 117
      Top = 24
      Width = 33
      Height = 18
      Caption = '","'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
end

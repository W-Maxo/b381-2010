object NewExp: TNewExp
  Left = 243
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1086#1074#1099#1081' '#1101#1082#1089#1087#1077#1088#1077#1084#1077#1085#1090
  ClientHeight = 95
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 13
  object EditName: TEdit
    Left = 24
    Top = 24
    Width = 193
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object RzBitBtn1: TRzBitBtn
    Left = 39
    Top = 58
    ModalResult = 1
    Caption = 'OK'
    TabOrder = 1
    ImageIndex = 16
    Images = Form1.ImageList2
  end
  object RzBitBtn2: TRzBitBtn
    Left = 128
    Top = 58
    ModalResult = 2
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    ImageIndex = 18
    Images = Form1.ImageList2
  end
end

object NewSerForm: TNewSerForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1086#1074#1072#1103' '#1089#1077#1088#1080#1103
  ClientHeight = 89
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 13
  object LNameSeries: TLabel
    Left = 15
    Top = 20
    Width = 51
    Height = 13
    Caption = #1048#1084#1103' '#1089#1077#1088#1080#1080
  end
  object EditName: TEdit
    Left = 72
    Top = 17
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object RzBitBtn2: TRzBitBtn
    Left = 178
    Top = 51
    ModalResult = 2
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    ImageIndex = 18
    Images = Form1.ImageList2
  end
  object RzBitBtn1: TRzBitBtn
    Left = 89
    Top = 51
    ModalResult = 1
    Caption = 'OK'
    TabOrder = 2
    ImageIndex = 16
    Images = Form1.ImageList2
  end
end

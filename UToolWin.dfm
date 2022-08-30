object ToolWin: TToolWin
  Left = 360
  Top = 197
  BorderStyle = bsSizeToolWin
  Caption = #1050#1091#1088#1089#1086#1088#1099
  ClientHeight = 245
  ClientWidth = 150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 150
    Height = 245
    Align = alClient
    TabOrder = 0
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 146
      Height = 241
      Align = alClient
      Lines.Strings = (
        'Memo1'
        '300.000vc 300.000vd '
        '300.000vrF')
      TabOrder = 0
    end
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 331
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 264
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 256
    Top = 264
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 96
    Top = 264
    Width = 48
    Height = 13
    Caption = #32479#35745#26102#38388
  end
  object Memo1: TMemo
    Left = 48
    Top = 64
    Width = 57
    Height = 185
    Lines.Strings = (
      'Memo'
      '1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object but_random: TButton
    Left = 48
    Top = 33
    Width = 57
    Height = 25
    Caption = #29983#20135#38543#26426
    TabOrder = 1
    OnClick = but_randomClick
  end
  object Memo2: TMemo
    Left = 152
    Top = 64
    Width = 57
    Height = 185
    Lines.Strings = (
      'Memo'
      '2')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object but_maopao: TButton
    Left = 152
    Top = 33
    Width = 57
    Height = 25
    Caption = #20882#27873
    TabOrder = 3
    OnClick = but_maopaoClick
  end
  object but_zheban: TButton
    Left = 240
    Top = 33
    Width = 57
    Height = 25
    Caption = #25240#21322
    TabOrder = 4
    OnClick = but_zhebanClick
  end
  object Memo3: TMemo
    Left = 240
    Top = 64
    Width = 57
    Height = 185
    Lines.Strings = (
      'Memo'
      '3')
    ScrollBars = ssVertical
    TabOrder = 5
  end
end

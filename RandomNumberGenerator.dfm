object formRandomNumberGenerator: TformRandomNumberGenerator
  Left = 0
  Top = 0
  Caption = 'Random number generator'
  ClientHeight = 332
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblRandomNumberList: TLabel
    Left = 120
    Top = 8
    Width = 99
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Random numbers list'
    Layout = tlCenter
  end
  object listBoxGeneratedNumbers: TListBox
    Left = 72
    Top = 27
    Width = 201
    Height = 257
    ItemHeight = 13
    TabOrder = 0
  end
  object btnGenerateNumbers: TButton
    Left = 175
    Top = 293
    Width = 98
    Height = 21
    Caption = 'Generate'
    TabOrder = 1
    OnClick = btnGenerateNumbersClick
  end
  object editNumbersToGenerate: TEdit
    Left = 72
    Top = 293
    Width = 97
    Height = 21
    Alignment = taCenter
    AutoSize = False
    TabOrder = 2
    Text = '5'
    OnKeyPress = editNumbersToGenerateKeyPress
  end
end

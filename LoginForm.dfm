object formLoginPage: TformLoginPage
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 182
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblUserName: TLabel
    Left = 106
    Top = 26
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'UserName'
    Layout = tlCenter
  end
  object lblPaaword: TLabel
    Left = 106
    Top = 72
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Password'
    Layout = tlCenter
  end
  object editUserName: TEdit
    Left = 55
    Top = 45
    Width = 162
    Height = 21
    TabOrder = 0
  end
  object editPassword: TEdit
    Left = 71
    Top = 91
    Width = 129
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnLoginToProgram: TButton
    Left = 106
    Top = 128
    Width = 65
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginToProgramClick
  end
end

object formCurrentDateDisplay: TformCurrentDateDisplay
  Left = 0
  Top = 0
  Caption = 'Current Date'
  ClientHeight = 67
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCurrentDate: TLabel
    Left = 16
    Top = 16
    Width = 153
    Height = 33
    AutoSize = False
    Caption = 'lblCurrentDate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblCurrentTime: TLabel
    Left = 201
    Top = 16
    Width = 196
    Height = 33
    Caption = 'lblCurrentTime'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object timerUpdateDate: TTimer
    OnTimer = timerUpdateDateTimer
    Left = 24
  end
end

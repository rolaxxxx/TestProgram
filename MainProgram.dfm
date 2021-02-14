object formMainProgram: TformMainProgram
  Left = 0
  Top = 0
  Caption = 'Test Program'
  ClientHeight = 242
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblMainProgramFunctions: TLabel
    Left = 64
    Top = 24
    Width = 113
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = 'Functions'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object btnDisplayCurrentDate: TButton
    Left = 64
    Top = 72
    Width = 113
    Height = 41
    Caption = 'Show date'
    TabOrder = 0
    OnClick = btnDisplayCurrentDateClick
  end
  object btnOpenWindowsNotepad: TButton
    Left = 64
    Top = 119
    Width = 113
    Height = 42
    Caption = 'Notepad'
    TabOrder = 1
    OnClick = btnOpenWindowsNotepadClick
  end
  object btnGenerateRandomNumbers: TButton
    Left = 64
    Top = 167
    Width = 113
    Height = 42
    Caption = 'Random Numbers'
    TabOrder = 2
    OnClick = btnGenerateRandomNumbersClick
  end
end

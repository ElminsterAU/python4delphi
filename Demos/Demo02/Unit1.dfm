object Form1: TForm1
  Left = 288
  Top = 201
  Caption = 'Demo of Python'
  ClientHeight = 337
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 129
    Width = 528
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 536
  end
  object Memo2: TMemo
    Left = 0
    Top = 0
    Width = 528
    Height = 129
    Align = alTop
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 0
    Top = 132
    Width = 528
    Height = 137
    Align = alClient
    Lines.Strings = (
      '2+2')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 269
    Width = 528
    Height = 68
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 6
      Top = 8
      Width = 115
      Height = 25
      Caption = 'Evaluate script'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 168
      Top = 8
      Width = 91
      Height = 25
      Caption = 'Load script...'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 264
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Save script...'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object PythonEngine1: TPythonEngine
    IO = PythonGUIInputOutput1
    Left = 32
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.py'
    Filter = 'Python files|*.py|Text files|*.txt|All files|*.*'
    Left = 176
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.py'
    Filter = 'Python files|*.py|Text files|*.txt|All files|*.*'
    Left = 208
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = Memo2
    Left = 64
  end
end

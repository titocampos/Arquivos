object Form14: TForm14
  Left = 214
  Top = 104
  Caption = 'Form14'
  ClientHeight = 453
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 862
    Height = 412
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 2
    object Label1: TLabel
      Left = 10
      Top = 14
      Width = 45
      Height = 13
      Caption = 'Comando'
    end
    object Edit1: TEdit
      Left = 58
      Top = 8
      Width = 665
      Height = 21
      TabOrder = 0
      Text = 'dir c:\ /w'
    end
    object Button1: TButton
      Left = 748
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Executar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end

object Form1: TForm1
  Left = 203
  Top = 172
  Caption = 'Acesso a arquivo remoto'
  ClientHeight = 405
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 37
    Top = 12
    Width = 51
    Height = 16
    Caption = 'Arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 54
    Width = 54
    Height = 16
    Caption = 'Caminho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 291
    Top = 54
    Width = 48
    Height = 16
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 545
    Top = 54
    Width = 40
    Height = 16
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 37
    Top = 120
    Width = 62
    Height = 16
    Caption = 'Conte'#250'do'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object E_ARQUIVO: TEdit
    Left = 37
    Top = 28
    Width = 756
    Height = 21
    TabOrder = 0
    Text = 'teste.txt'
  end
  object E_CAMINHO: TEdit
    Left = 37
    Top = 70
    Width = 248
    Height = 21
    TabOrder = 1
    Text = '\\cfserver\executavel'
  end
  object E_USUARIO: TEdit
    Left = 291
    Top = 70
    Width = 248
    Height = 21
    TabOrder = 2
  end
  object E_SENHA: TEdit
    Left = 545
    Top = 70
    Width = 248
    Height = 21
    TabOrder = 3
  end
  object BT_LEITURA: TButton
    Left = 678
    Top = 104
    Width = 115
    Height = 25
    Caption = 'Ler Arquivo'
    TabOrder = 4
    OnClick = BT_LEITURAClick
  end
  object M_CONTEUDO: TMemo
    Left = 37
    Top = 136
    Width = 756
    Height = 245
    TabOrder = 5
  end
end

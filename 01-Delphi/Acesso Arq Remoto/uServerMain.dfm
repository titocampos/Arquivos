object frmServer: TfrmServer
  Left = 281
  Top = 99
  Caption = 'CRMHttpServer'
  ClientHeight = 62
  ClientWidth = 171
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chkActive: TCheckBox
    Left = 50
    Top = 18
    Width = 97
    Height = 17
    Caption = 'Active'
    TabOrder = 0
    OnClick = chkActiveClick
  end
  object httpServer: TIdHTTPServer
    Bindings = <
      item
        IP = '0.0.0.0'
        Port = 95
      end>
    CommandHandlers = <>
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    OnCommandGet = httpServerCommandGet
    Left = 12
    Top = 10
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <
      item
        IP = '0.0.0.0'
        Port = 95
      end>
    CommandHandlers = <>
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    OnCommandGet = httpServerCommandGet
    Left = 12
    Top = 10
  end
end

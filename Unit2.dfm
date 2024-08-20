object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 401
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 401
    Align = alClient
    BevelWidth = 4
    TabOrder = 0
    object Image1: TImage
      Left = 4
      Top = 4
      Width = 632
      Height = 393
      Align = alClient
      AutoSize = True
      Center = True
      ExplicitLeft = -279
      ExplicitTop = -112
      ExplicitWidth = 528
      ExplicitHeight = 353
    end
  end
  object TmrSplash: TTimer
    Interval = 3000
    OnTimer = TmrSplashTimer
    Left = 256
    Top = 232
  end
end

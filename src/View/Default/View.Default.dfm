object formDefault: TformDefault
  Left = 0
  Top = 0
  Caption = 'EcoReport'
  ClientHeight = 626
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object pnlMain: TUPanel
    Left = 0
    Top = 32
    Width = 936
    Height = 594
    Align = alClient
    Color = 15132390
    TabOrder = 0
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    ExplicitWidth = 930
    ExplicitHeight = 585
  end
  object cBar: TUCaptionBar
    Left = 0
    Top = 0
    Width = 936
    Caption = '   EcoReport'
    Color = 15921906
    TabOrder = 1
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15921906
    CustomBackColor.LightColor = 15921906
    CustomBackColor.DarkColor = 2829099
    ExplicitWidth = 930
    object btnQuit: TUQuickButton
      Left = 891
      Top = 0
      Hint = 'Fechar'
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsQuit
      Caption = #57610
      ExplicitLeft = 456
    end
    object btnMinimize: TUQuickButton
      Left = 801
      Top = 0
      Hint = 'Minimizar'
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsMin
      Caption = #57608
      ExplicitLeft = 456
    end
    object btnWindow: TUQuickButton
      Left = 846
      Top = 0
      Hint = 'Maximizar'
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      ButtonStyle = qbsMax
      Caption = #57347
      ExplicitLeft = 456
    end
    object btnTheme: TUQuickButton
      Left = 756
      Top = 0
      Hint = 'Minimizar'
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnThemeClick
      CustomBackColor.Enabled = False
      CustomBackColor.Color = clBlack
      CustomBackColor.LightColor = 13619151
      CustomBackColor.DarkColor = 3947580
      Caption = #59144
      ExplicitLeft = 456
    end
  end
end

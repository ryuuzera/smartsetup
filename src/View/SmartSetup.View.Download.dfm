object frmDownload: TfrmDownload
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SmartSetup'
  ClientHeight = 285
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 285
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 3288877
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Shape1: TShape
      Left = 13
      Top = 21
      Width = 81
      Height = 244
      Brush.Color = 10259845
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 40
      Top = 21
      Width = 553
      Height = 244
      Brush.Color = 10259845
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape3: TShape
      Left = 533
      Top = 21
      Width = 81
      Height = 244
      Brush.Color = 10259845
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lbTitulo: TLabel
      Left = 226
      Top = 33
      Width = 169
      Height = 25
      Caption = 'Efetuando Download'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Gauge1: TGauge
      Left = 40
      Top = 184
      Width = 545
      Height = 36
      BackColor = 5064516
      BorderStyle = bsNone
      ForeColor = 3745830
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      Progress = 0
      ShowHint = False
      ShowText = False
    end
    object lbStatus: TLabel
      Left = 40
      Top = 157
      Width = 142
      Height = 21
      Caption = 'Efetuando Download'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
  end
end

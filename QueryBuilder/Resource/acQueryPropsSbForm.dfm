object acQueryPropsSbForm: TacQueryPropsSbForm
  Left = 800
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Query Properties'
  ClientHeight = 323
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pButtons: TPanel
    Left = 0
    Top = 289
    Width = 349
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bOk: TButton
      Left = 187
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object bCancel: TButton
      Left = 269
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pTop: TPanel
    Left = 0
    Top = 101
    Width = 349
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 4
      Top = 4
      Width = 341
      Height = 105
      Align = alClient
      Caption = 'FETCH'
      TabOrder = 0
      object rbAllRecords: TRadioButton
        Left = 12
        Top = 22
        Width = 113
        Height = 17
        Caption = 'All records'
        TabOrder = 0
      end
      object rbFirst: TRadioButton
        Left = 12
        Top = 50
        Width = 105
        Height = 17
        Caption = 'FIRST'
        TabOrder = 1
        OnClick = rbTopClick
      end
      object rbTop: TRadioButton
        Left = 12
        Top = 78
        Width = 53
        Height = 17
        Caption = 'TOP'
        TabOrder = 2
        OnClick = rbTopClick
      end
      object cbStartingAt: TCheckBox
        Left = 132
        Top = 78
        Width = 97
        Height = 17
        Caption = 'START AT'
        TabOrder = 4
        OnClick = rbTopClick
      end
      object eTop: TEdit
        Left = 63
        Top = 76
        Width = 53
        Height = 21
        TabOrder = 3
        Text = '0'
      end
      object eStartingAt: TEdit
        Left = 231
        Top = 76
        Width = 53
        Height = 21
        TabOrder = 5
        Text = '0'
      end
    end
  end
  object pSelectType: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 101
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object gbSelectType: TGroupBox
      Left = 4
      Top = 4
      Width = 341
      Height = 93
      Align = alClient
      Caption = 'SELECT'
      TabOrder = 0
      object rbNone: TRadioButton
        Left = 12
        Top = 19
        Width = 315
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Default'
        TabOrder = 0
      end
      object rbDistinct: TRadioButton
        Left = 12
        Top = 42
        Width = 315
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'DISTINCT'
        TabOrder = 1
      end
      object rbAll: TRadioButton
        Left = 12
        Top = 65
        Width = 315
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'ALL'
        TabOrder = 2
      end
    end
  end
  object Localizer: TacQBLocalizerForm
    OnLocalize = LocalizerLocalize
    Properties.Strings = (
      'pTop.GroupBox1.rbAllRecords.Caption')
    Left = 9
    Top = 228
  end
end

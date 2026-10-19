object acQueryPropsMSForm: TacQueryPropsMSForm
  Left = 778
  Top = 427
  ActiveControl = cbTop
  BorderStyle = bsDialog
  Caption = 'Query Properties'
  ClientHeight = 368
  ClientWidth = 352
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
    Top = 334
    Width = 352
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object bOk: TButton
      Left = 190
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
      Left = 272
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
    Width = 352
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object Bevel1: TGroupBox
      Left = 4
      Top = 4
      Width = 344
      Height = 44
      Align = alClient
      TabOrder = 0
      object cbTop: TCheckBox
        Left = 15
        Top = 14
        Width = 44
        Height = 17
        Caption = 'TOP'
        TabOrder = 0
        OnClick = cbTopClick
      end
      object eTop: TEdit
        Left = 65
        Top = 12
        Width = 62
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object cbTopPercent: TCheckBox
        Left = 138
        Top = 14
        Width = 77
        Height = 17
        Caption = 'PERCENT'
        TabOrder = 2
      end
      object cbTopWithTies: TCheckBox
        Left = 236
        Top = 14
        Width = 81
        Height = 17
        Caption = 'WITH TIES'
        TabOrder = 3
      end
    end
  end
  object pGrpoupBy: TPanel
    Left = 0
    Top = 205
    Width = 352
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 3
    object Bevel2: TGroupBox
      Left = 4
      Top = 4
      Width = 344
      Height = 44
      Align = alClient
      TabOrder = 0
      object lGroupBy: TLabel
        Left = 11
        Top = 16
        Width = 56
        Height = 13
        Caption = 'GROUP BY'
      end
      object cbGroupByAll: TCheckBox
        Left = 91
        Top = 15
        Width = 41
        Height = 17
        Caption = 'ALL'
        TabOrder = 0
      end
      object cbGroupByWith: TComboBox
        Left = 147
        Top = 12
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          '(none)'
          'WITH CUBE'
          'WITH ROLLUP')
      end
    end
  end
  object pSelectType: TPanel
    Left = 0
    Top = 0
    Width = 352
    Height = 101
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object gbSelectType: TGroupBox
      Left = 4
      Top = 4
      Width = 344
      Height = 93
      Align = alClient
      Caption = 'SELECT'
      TabOrder = 0
      object rbNone: TRadioButton
        Left = 12
        Top = 19
        Width = 318
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Default'
        TabOrder = 0
      end
      object rbDistinct: TRadioButton
        Left = 12
        Top = 42
        Width = 318
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'DISTINCT'
        TabOrder = 1
      end
      object rbAll: TRadioButton
        Left = 12
        Top = 65
        Width = 318
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'ALL'
        TabOrder = 2
      end
    end
  end
  object pInto: TPanel
    Left = 0
    Top = 153
    Width = 352
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 2
    object Bevel3: TGroupBox
      Left = 4
      Top = 4
      Width = 344
      Height = 44
      Align = alClient
      TabOrder = 0
      object cbInto: TCheckBox
        Left = 15
        Top = 14
        Width = 44
        Height = 17
        Caption = 'INTO'
        TabOrder = 0
        OnClick = cbIntoClick
      end
      object eInto: TEdit
        Left = 65
        Top = 12
        Width = 270
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
    end
  end
  object Localizer: TacQBLocalizerForm
    OnLocalize = LocalizerLocalize
    Left = 277
    Top = 234
  end
end

object acQueryPropsPgForm: TacQueryPropsPgForm
  Left = 725
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Query Properties'
  ClientHeight = 303
  ClientWidth = 362
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
    Top = 269
    Width = 362
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bOk: TButton
      Left = 200
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
      Left = 282
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
    Width = 362
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 4
      Top = 4
      Width = 354
      Height = 44
      Align = alClient
      TabOrder = 0
      object eOffset: TEdit
        Left = 209
        Top = 12
        Width = 61
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object cbOffset: TCheckBox
        Left = 142
        Top = 14
        Width = 61
        Height = 17
        Caption = 'OFFSET'
        TabOrder = 1
        OnClick = cbOffsetClick
      end
      object eLimit: TEdit
        Left = 62
        Top = 12
        Width = 61
        Height = 21
        TabOrder = 2
        Text = '0'
      end
      object cbLimit: TCheckBox
        Left = 9
        Top = 14
        Width = 47
        Height = 17
        Caption = 'LIMIT'
        TabOrder = 3
        OnClick = cbLimitClick
      end
    end
  end
  object pSelectType: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 101
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object gbSelectType: TGroupBox
      Left = 4
      Top = 4
      Width = 354
      Height = 93
      Align = alClient
      Caption = 'SELECT Type'
      TabOrder = 0
      object rbNone: TRadioButton
        Left = 12
        Top = 19
        Width = 328
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Default'
        TabOrder = 0
      end
      object rbDistinct: TRadioButton
        Left = 12
        Top = 42
        Width = 328
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'DISTINCT'
        TabOrder = 1
      end
      object rbAll: TRadioButton
        Left = 12
        Top = 65
        Width = 328
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
    Width = 362
    Height = 75
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 3
    object gbIntoClause: TGroupBox
      Left = 4
      Top = 4
      Width = 354
      Height = 67
      Align = alClient
      TabOrder = 0
      object lblTable: TLabel
        Left = 10
        Top = 40
        Width = 34
        Height = 13
        Caption = 'TABLE'
      end
      object checkIntoClause: TCheckBox
        Left = 10
        Top = 14
        Width = 51
        Height = 17
        Caption = 'INTO'
        TabOrder = 0
        OnClick = checkIntoClauseClick
      end
      object checkTemporary: TCheckBox
        Left = 78
        Top = 14
        Width = 100
        Height = 17
        Caption = 'TEMPORARY'
        TabOrder = 2
      end
      object editTableName: TEdit
        Left = 50
        Top = 37
        Width = 289
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
    end
  end
  object Localizer: TacQBLocalizerForm
    OnLocalize = LocalizerLocalize
    Left = 295
    Top = 17
  end
end

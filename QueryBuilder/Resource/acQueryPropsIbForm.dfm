object acQueryPropsIbForm: TacQueryPropsIbForm
  Left = 571
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Query Properties'
  ClientHeight = 275
  ClientWidth = 398
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
    Top = 241
    Width = 398
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bOk: TButton
      Left = 236
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
      Left = 318
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
    Width = 398
    Height = 124
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 4
      Top = 4
      Width = 390
      Height = 116
      Align = alClient
      TabOrder = 0
      object checkRows: TCheckBox
        Left = 12
        Top = 14
        Width = 50
        Height = 17
        Caption = 'ROWS'
        TabOrder = 0
        OnClick = checkRowsClick
      end
      object checkTo: TCheckBox
        Left = 199
        Top = 38
        Width = 53
        Height = 17
        Caption = 'TO'
        TabOrder = 2
        OnClick = checkRowsClick
      end
      object editRows: TEdit
        Left = 116
        Top = 36
        Width = 53
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object editTo: TEdit
        Left = 258
        Top = 36
        Width = 53
        Height = 21
        TabOrder = 3
        Text = '0'
      end
      object radioRows: TRadioButton
        Left = 30
        Top = 38
        Width = 56
        Height = 17
        Caption = 'ROWS'
        Checked = True
        TabOrder = 4
        TabStop = True
        OnClick = checkRowsClick
      end
      object radioPercent: TRadioButton
        Left = 30
        Top = 65
        Width = 80
        Height = 17
        Caption = 'PERCENT'
        TabOrder = 5
        OnClick = checkRowsClick
      end
      object editPercent: TEdit
        Left = 116
        Top = 63
        Width = 53
        Height = 21
        TabOrder = 6
        Text = '0'
      end
      object checkBy: TCheckBox
        Left = 199
        Top = 65
        Width = 53
        Height = 17
        Caption = 'BY'
        TabOrder = 7
        OnClick = checkRowsClick
      end
      object editBy: TEdit
        Left = 258
        Top = 63
        Width = 53
        Height = 21
        TabOrder = 8
        Text = '0'
      end
      object checkWithTies: TCheckBox
        Left = 12
        Top = 90
        Width = 97
        Height = 17
        Caption = 'WITH TIES'
        TabOrder = 9
      end
    end
  end
  object pSelectType: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 101
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object gbSelectType: TGroupBox
      Left = 4
      Top = 4
      Width = 390
      Height = 93
      Align = alClient
      Caption = 'SELECT'
      TabOrder = 0
      object rbNone: TRadioButton
        Left = 12
        Top = 19
        Width = 364
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Default'
        TabOrder = 0
      end
      object rbDistinct: TRadioButton
        Left = 12
        Top = 42
        Width = 364
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'DISTINCT'
        TabOrder = 1
      end
      object rbAll: TRadioButton
        Left = 12
        Top = 65
        Width = 364
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'ALL'
        TabOrder = 2
      end
    end
  end
  object Localizer: TacQBLocalizerForm
    OnLocalize = LocalizerLocalize
    Left = 7
    Top = 190
  end
end

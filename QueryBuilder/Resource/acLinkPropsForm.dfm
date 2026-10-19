object acLinkPropsForm: TacLinkPropsForm
  Left = 667
  Top = 275
  BorderStyle = bsDialog
  Caption = 'Link Properties'
  ClientHeight = 155
  ClientWidth = 352
  Color = clBtnFace
  Constraints.MinHeight = 180
  Constraints.MinWidth = 358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pButtons: TPanel
    Left = 0
    Top = 121
    Width = 352
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
  object pObjects: TPanel
    Left = 0
    Top = 0
    Width = 352
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pLeftObj: TPanel
      Left = 0
      Top = 0
      Width = 171
      Height = 73
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lLeftObject: TLabel
        Left = 9
        Top = 8
        Width = 50
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Left object'
      end
      object cbAllFromLeft: TCheckBox
        Left = 9
        Top = 48
        Width = 158
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Select All From Left'
        TabOrder = 1
        OnClick = cbAllFromLeftClick
      end
      object eLeftObj: TEdit
        Left = 9
        Top = 24
        Width = 158
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pRightObj: TPanel
      Left = 182
      Top = 0
      Width = 170
      Height = 73
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object lRightObject: TLabel
        Left = 4
        Top = 8
        Width = 57
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Right object'
      end
      object cbAllFromRight: TCheckBox
        Left = 2
        Top = 48
        Width = 160
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Select All From Right'
        TabOrder = 1
        OnClick = cbAllFromRightClick
      end
      object eRightObj: TEdit
        Left = 4
        Top = 24
        Width = 158
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pExpression: TPanel
    Left = 0
    Top = 73
    Width = 352
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object lJoinExpression: TLabel
      Left = 9
      Top = 4
      Width = 72
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Join expression'
    end
    object eExpression: TEdit
      Left = 9
      Top = 20
      Width = 335
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object Localizer: TacQBLocalizerForm
    Properties.Strings = (
      'Caption'
      'pButtons.bOk.Caption'
      'pButtons.bCancel.Caption'
      'pObjects.pLeftObj.lLeftObject.Caption'
      'pObjects.pLeftObj.cbAllFromLeft.Caption'
      'pObjects.pRightObj.lRightObject.Caption'
      'pObjects.pRightObj.cbAllFromRight.Caption'
      'pExpression.lJoinExpression.Caption')
    Left = 130
    Top = 73
  end
end

object acDatasourcePropsForm: TacDatasourcePropsForm
  Left = 564
  Top = 391
  ActiveControl = eAlias
  BorderStyle = bsDialog
  Caption = 'Datasource Properties'
  ClientHeight = 219
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pButtons: TPanel
    Left = 0
    Top = 185
    Width = 356
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
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
      Left = 273
      Top = 4
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pDatasource: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 101
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lObject: TLabel
      Left = 9
      Top = 8
      Width = 31
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Object'
    end
    object lAlias: TLabel
      Left = 9
      Top = 56
      Width = 22
      Height = 13
      Caption = 'Alias'
    end
    object eObj: TEdit
      Left = 9
      Top = 24
      Width = 340
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
    object eAlias: TEdit
      Left = 9
      Top = 72
      Width = 340
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
  end
  object pParams: TPanel
    Left = 0
    Top = 101
    Width = 356
    Height = 84
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object lParams: TLabel
      Left = 9
      Top = 0
      Width = 53
      Height = 13
      Caption = 'Parameters'
    end
    object mParams: TMemo
      Left = 9
      Top = 16
      Width = 340
      Height = 50
      TabOrder = 0
    end
  end
  object Localizer: TacQBLocalizerForm
    Properties.Strings = (
      'Caption'
      'pButtons.bOk.Caption'
      'pButtons.bCancel.Caption'
      'pDatasource.lObject.Caption'
      'pDatasource.lAlias.Caption'
      'pParams.lParams.Caption')
    Left = 29
    Top = 200
  end
end

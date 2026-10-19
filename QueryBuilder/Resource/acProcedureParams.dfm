object acProcedureParams: TacProcedureParams
  Left = 347
  Top = 300
  BorderStyle = bsDialog
  Caption = 'Edit Procedure Parameter Values'
  ClientHeight = 99
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lPrompt: TLabel
    Left = 9
    Top = 9
    Width = 214
    Height = 13
    Caption = 'Edit parameter values for selected procedure:'
  end
  object lProcName: TLabel
    Left = 9
    Top = 37
    Width = 41
    Height = 13
    Caption = 'fn_ord('
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lProcBracket: TLabel
    Left = 273
    Top = 37
    Width = 5
    Height = 13
    Caption = ')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bOk: TButton
    Left = 133
    Top = 69
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object eParams: TEdit
    Left = 57
    Top = 33
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object bCancel: TButton
    Left = 216
    Top = 69
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object Localizer: TacQBLocalizerForm
    Properties.Strings = (
      'Caption'
      'lPrompt.Caption'
      'bOk.Caption'
      'bCancel.Caption')
    Left = 7
    Top = 64
  end
end

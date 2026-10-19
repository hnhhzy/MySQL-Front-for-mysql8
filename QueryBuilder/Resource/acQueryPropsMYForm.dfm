object acQueryPropsMYForm: TacQueryPropsMYForm
  Left = 428
  Top = 236
  BorderStyle = bsDialog
  Caption = 'Query Properties'
  ClientHeight = 409
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pButtons: TPanel
    Left = 0
    Top = 375
    Width = 467
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bOk: TButton
      Left = 305
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
      Left = 387
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
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 467
    Height = 305
    ActivePage = tsOptions
    Align = alTop
    TabOrder = 1
    object tsOptions: TTabSheet
      BorderWidth = 4
      Caption = 'General'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 94
        Width = 451
        Height = 50
        Align = alTop
        Caption = 'GROUP BY'
        TabOrder = 0
        object Label1: TLabel
          Left = 18
          Top = 19
          Width = 3
          Height = 13
        end
        object cbGroupByWithRollup: TCheckBox
          Left = 10
          Top = 21
          Width = 97
          Height = 17
          Caption = 'WITH ROLLUP'
          TabOrder = 0
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 89
        Width = 451
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 1
      end
      object gbSelectType: TGroupBox
        Left = 0
        Top = 0
        Width = 451
        Height = 89
        Align = alTop
        Caption = 'SELECT'
        TabOrder = 2
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
      object GroupBox4: TGroupBox
        Left = 0
        Top = 144
        Width = 451
        Height = 44
        Align = alTop
        TabOrder = 3
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
      object GroupBox3: TGroupBox
        Left = 0
        Top = 188
        Width = 451
        Height = 44
        Align = alTop
        TabOrder = 4
        object rbLockInShareMode: TRadioButton
          Left = 195
          Top = 14
          Width = 113
          Height = 17
          Caption = 'IN SHARE MODE'
          TabOrder = 0
        end
        object rbLockForUpdate: TRadioButton
          Left = 78
          Top = 14
          Width = 97
          Height = 17
          Caption = 'FOR UPDATE'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object cbLock: TCheckBox
          Left = 9
          Top = 14
          Width = 48
          Height = 17
          Caption = 'LOCK'
          TabOrder = 2
          OnClick = cbLockClick
        end
      end
    end
    object tsSelectInto: TTabSheet
      BorderWidth = 4
      Caption = 'INTO Clause'
      ImageIndex = 1
      object rbOutFile: TRadioButton
        Left = 127
        Top = 60
        Width = 73
        Height = 17
        Caption = 'OUTFILE'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbOutFileClick
      end
      object rbDumpFile: TRadioButton
        Left = 40
        Top = 60
        Width = 81
        Height = 17
        Caption = 'DUMPFILE'
        TabOrder = 1
        OnClick = rbOutFileClick
      end
      object cbInto: TCheckBox
        Left = 9
        Top = 10
        Width = 46
        Height = 17
        Caption = 'INTO'
        TabOrder = 2
        OnClick = cbIntoClick
      end
      object eFileName: TEdit
        Left = 40
        Top = 33
        Width = 415
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        Text = 'filename.dat'
      end
      object GroupBox6: TGroupBox
        Left = 127
        Top = 83
        Width = 328
        Height = 102
        Anchors = [akLeft, akTop, akRight]
        Caption = 'FIELDS'
        TabOrder = 4
        object cbFEnclosed: TCheckBox
          Left = 13
          Top = 49
          Width = 111
          Height = 17
          Caption = 'ENCLOSED BY'
          TabOrder = 0
          OnClick = cbFEnclosedClick
        end
        object cbFEscaped: TCheckBox
          Left = 13
          Top = 75
          Width = 109
          Height = 17
          Caption = 'ESCAPED BY'
          TabOrder = 1
          OnClick = cbFEscapedClick
        end
        object eFEsc: TEdit
          Left = 126
          Top = 73
          Width = 37
          Height = 21
          TabOrder = 2
          Text = '\\'
        end
        object eFEnc: TEdit
          Left = 125
          Top = 47
          Width = 37
          Height = 21
          TabOrder = 3
        end
        object cbFEnclosedOpt: TCheckBox
          Left = 171
          Top = 49
          Width = 97
          Height = 17
          Caption = 'OPTIONALLY'
          TabOrder = 4
        end
        object eFTerm: TEdit
          Left = 125
          Top = 21
          Width = 37
          Height = 21
          TabOrder = 5
          Text = '\t'
        end
        object cbFTerminated: TCheckBox
          Left = 13
          Top = 23
          Width = 109
          Height = 17
          Caption = 'TERMINATED BY'
          TabOrder = 6
          OnClick = cbFTerminatedClick
        end
      end
      object GroupBox7: TGroupBox
        Left = 127
        Top = 191
        Width = 328
        Height = 79
        Anchors = [akLeft, akTop, akRight]
        Caption = 'LINES'
        TabOrder = 5
        object cbRStarting: TCheckBox
          Left = 13
          Top = 23
          Width = 109
          Height = 17
          Caption = 'STARTING BY'
          TabOrder = 0
          OnClick = cbRStartingClick
        end
        object eRStart: TEdit
          Left = 125
          Top = 21
          Width = 37
          Height = 21
          TabOrder = 1
        end
        object cbRTerminated: TCheckBox
          Left = 13
          Top = 49
          Width = 109
          Height = 17
          Caption = 'TERMINATED BY'
          TabOrder = 2
          OnClick = cbRTerminatedClick
        end
        object eRTerm: TEdit
          Left = 125
          Top = 47
          Width = 37
          Height = 21
          TabOrder = 3
          Text = '\n'
        end
      end
    end
    object tsLock: TTabSheet
      BorderWidth = 4
      Caption = 'Options'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 451
        Height = 9
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 9
        Width = 451
        Height = 169
        Align = alTop
        Caption = 'Options'
        TabOrder = 1
        object cbHighPriority: TCheckBox
          Left = 10
          Top = 20
          Width = 105
          Height = 17
          Caption = 'HIGH_PRIORITY'
          TabOrder = 0
        end
        object cbStraightJoin: TCheckBox
          Left = 10
          Top = 44
          Width = 105
          Height = 17
          Caption = 'STRAIGHT_JOIN'
          TabOrder = 1
        end
        object cbBigResult: TCheckBox
          Left = 10
          Top = 68
          Width = 117
          Height = 17
          Caption = 'SQL_BIG_RESULT'
          TabOrder = 2
        end
        object cbBufferResult: TCheckBox
          Left = 10
          Top = 92
          Width = 141
          Height = 17
          Caption = 'SQL_BUFFER_RESULT'
          TabOrder = 3
        end
        object cbSmallResult: TCheckBox
          Left = 10
          Top = 116
          Width = 133
          Height = 17
          Caption = 'SQL_SMALL_RESULT'
          TabOrder = 4
        end
        object cbCalcFoundRows: TCheckBox
          Left = 10
          Top = 140
          Width = 157
          Height = 17
          Caption = 'SQL_CALC_FOUND_ROWS'
          TabOrder = 5
        end
        object cbCacheOp: TCheckBox
          Left = 243
          Top = 20
          Width = 97
          Height = 17
          Caption = 'Cache Option:'
          TabOrder = 6
          OnClick = cbCacheOpClick
        end
        object rbCache: TRadioButton
          Left = 259
          Top = 44
          Width = 113
          Height = 17
          Caption = 'SQL_CACHE'
          Checked = True
          TabOrder = 7
          TabStop = True
        end
        object rbNoCache: TRadioButton
          Left = 259
          Top = 68
          Width = 113
          Height = 17
          Caption = 'SQL_NO_CACHE'
          TabOrder = 8
        end
      end
    end
  end
  object Localizer: TacQBLocalizerForm
    OnLocalize = LocalizerLocalize
    Properties.Strings = (
      'pcMain.tsOptions.Caption'
      'pcMain.tsSelectInto.Caption'
      'pcMain.tsLock.Caption'
      'pcMain.tsLock.GroupBox1.cbCacheOp.Caption')
    Left = 109
    Top = 295
  end
end

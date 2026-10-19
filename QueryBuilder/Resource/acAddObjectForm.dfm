object acAddObjectForm: TacAddObjectForm
  Left = 345
  Top = 238
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Add new object'
  ClientHeight = 394
  ClientWidth = 442
  Color = clBtnFace
  Constraints.MinHeight = 421
  Constraints.MinWidth = 428
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 13
  object pcObjects: TPageControl
    Left = 0
    Top = 60
    Width = 442
    Height = 300
    ActivePage = tsTables
    Align = alClient
    TabOrder = 0
    OnChange = pcObjectsChange
    object tsTables: TTabSheet
      Caption = 'Tables'
      object lTables: TListView
        Left = 0
        Top = 0
        Width = 434
        Height = 272
        Align = alClient
        Columns = <
          item
            Caption = 'Name'
            Width = 200
          end
          item
            AutoSize = True
            Caption = 'Description'
          end>
        MultiSelect = True
        ReadOnly = True
        TabOrder = 0
        ViewStyle = vsList
        OnDblClick = lListViewDblClick
      end
    end
    object tsViews: TTabSheet
      Caption = 'Views'
      ImageIndex = 1
      object lViews: TListView
        Left = 0
        Top = 0
        Width = 434
        Height = 272
        Align = alClient
        Columns = <
          item
            Caption = 'Name'
            Width = 200
          end
          item
            AutoSize = True
            Caption = 'Description'
          end>
        MultiSelect = True
        ReadOnly = True
        TabOrder = 0
        ViewStyle = vsList
        OnDblClick = lListViewDblClick
      end
    end
    object tsProcedures: TTabSheet
      Caption = 'Procedures'
      ImageIndex = 2
      object lProcedures: TListView
        Left = 0
        Top = 0
        Width = 434
        Height = 272
        Align = alClient
        Columns = <
          item
            Caption = 'Name'
            Width = 200
          end
          item
            AutoSize = True
            Caption = 'Description'
          end>
        ReadOnly = True
        TabOrder = 0
        ViewStyle = vsList
        OnDblClick = lListViewDblClick
      end
    end
    object tsSynonyms: TTabSheet
      Caption = 'Synonyms'
      ImageIndex = 3
      object lSynonyms: TListView
        Left = 0
        Top = 0
        Width = 434
        Height = 272
        Align = alClient
        Columns = <
          item
            Caption = 'Name'
            Width = 200
          end
          item
            AutoSize = True
            Caption = 'Description'
          end>
        ReadOnly = True
        TabOrder = 0
        ViewStyle = vsList
        OnDblClick = lListViewDblClick
      end
    end
  end
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lInstruction: TLabel
      Left = 8
      Top = 6
      Width = 421
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Select an object and press the "Add Object" button to add new object to the query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Style = []
      ParentFont = False
    end
    object lFilterBySchema: TLabel
      Left = 8
      Top = 36
      Width = 150
      Height = 13
      Caption = 'Filter objects by Schema name:'
    end
    object cbSchemas: TComboBox
      Left = 163
      Top = 32
      Width = 273
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = cbSchemasChange
    end
  end
  object pBottom: TPanel
    Left = 0
    Top = 360
    Width = 442
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bAdd: TButton
      Left = 4
      Top = 4
      Width = 120
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Add Object'
      Enabled = False
      TabOrder = 0
      OnClick = bAddClick
    end
    object bClose: TButton
      Left = 360
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Close'
      Default = True
      TabOrder = 1
      OnClick = bCloseClick
    end
  end
  object Localizer: TacQBLocalizerForm
    OnLocalize = LocalizerLocalize
    Properties.Strings = (
      'Caption'
      'pcObjects.tsTables.Caption'
      'pcObjects.tsTables.cbAddFK.Caption'
      'pcObjects.tsViews.Caption'
      'pcObjects.tsProcedures.Caption'
      'pcObjects.tsSynonyms.Caption'
      'pTop.lInstruction.Caption'
      'pTop.lFilterBySchema.Caption'
      'pBottom.bAdd.Caption'
      'pBottom.bClose.Caption')
    Left = 48
    Top = 162
  end
end

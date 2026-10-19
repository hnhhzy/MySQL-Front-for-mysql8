unit acQBBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Menus, Grids, acAST;

type
  TacQueryBuilder = class;
  TacQueryBuilderControlOwner = class(TComponent);

  TacQBBorderStyle = (qbbsNone, qbbsSingle, qbbsFlat);
  TacBkImagePos = (bkipTopLeft, bkipCenter, bkipTile, bkipStretch);
  TacBkImageDarkness = (bgidNormal, bgidLight, bgidDark);

  TacFieldsList = class(TObject)
  public
    procedure AddField(const AName: WideString; ACaseSensitive: Boolean = False);
  end;

  TacBaseMetadataProvider = class(TComponent)
  end;

  TacBaseSyntaxProvider = class(TComponent)
  end;

  TacMetadataContainer = class(TPersistent)
  private
    FDefaultDatabaseNameStr: WideString;
    FSQLContext: TSQLContext;
  public
    constructor Create();
    destructor Destroy(); override;
    property DefaultDatabaseNameStr: WideString read FDefaultDatabaseNameStr write FDefaultDatabaseNameStr;
    property SQLContext: TSQLContext read FSQLContext;
  end;

  TacUnionSubQuery = class(TObject)
  public
    procedure AddObjectAt(AQualifiedName: TSQLQualifiedName; const APoint: TPoint);
  end;

  TacSubQuery = class(TObject)
  private
    FActiveUnionSubquery: TacUnionSubQuery;
  public
    constructor Create();
    destructor Destroy(); override;
    property ActiveUnionSubquery: TacUnionSubQuery read FActiveUnionSubquery;
  end;

  TacSubQueries = class(TObject)
  private
    FCount: Integer;
  public
    property Count: Integer read FCount;
  end;

  TacPageControl = class(TPageControl);
  TacQueryBuilderPageControl = class(TacPageControl);
  TacPanel = class(TPanel);
  TacQueryBuilderWorkArea = class(TCustomControl);
  TacQueryBuilderSelectListControl = class(TCustomGrid)
  public
    property EditorMode;
  end;

  TacLinkPainter = class(TPersistent)
  private
    FLinkColor: TColor;
  published
    property LinkColor: TColor read FLinkColor write FLinkColor;
  end;

  TacAddObjectFormOptions = class(TPersistent)
  private
    FConstraints: TSizeConstraints;
  published
    property Constraints: TSizeConstraints read FConstraints write FConstraints;
  end;

  TacTreeOptions = class(TPersistent)
  private
    FTreeVisible: Boolean;
    FTreeWidth: Integer;
    FUnionsNodeText: WideString;
    FFieldsNodeText: WideString;
    FFromNodeText: WideString;
  published
    property TreeVisible: Boolean read FTreeVisible write FTreeVisible;
    property TreeWidth: Integer read FTreeWidth write FTreeWidth;
    property UnionsNodeText: WideString read FUnionsNodeText write FUnionsNodeText;
    property FieldsNodeText: WideString read FFieldsNodeText write FFieldsNodeText;
    property FromNodeText: WideString read FFromNodeText write FFromNodeText;
  end;

  TacTreeOptionsMetadata = class(TPersistent)
  private
    FTreeVisible: Boolean;
    FTreeWidth: Integer;
    FTablesNodeName: WideString;
    FViewsNodeName: WideString;
    FProceduresNodeName: WideString;
    FSynonymsNodeName: WideString;
  published
    property TreeVisible: Boolean read FTreeVisible write FTreeVisible;
    property TreeWidth: Integer read FTreeWidth write FTreeWidth;
    property TablesNodeName: WideString read FTablesNodeName write FTablesNodeName;
    property ViewsNodeName: WideString read FViewsNodeName write FViewsNodeName;
    property ProceduresNodeName: WideString read FProceduresNodeName write FProceduresNodeName;
    property SynonymsNodeName: WideString read FSynonymsNodeName write FSynonymsNodeName;
  end;

  TacSelectListOptions = class(TPersistent)
  private
    FToolbarImageUp: TPicture;
    FToolbarImageDown: TPicture;
    FToolbarImageInsert: TPicture;
    FToolbarImageDelete: TPicture;
    FToolbarImageCollapse: TPicture;
    FToolbarImageExpand: TPicture;
  public
    constructor Create();
    destructor Destroy(); override;
  published
    property ToolbarImageUp: TPicture read FToolbarImageUp write FToolbarImageUp;
    property ToolbarImageDown: TPicture read FToolbarImageDown write FToolbarImageDown;
    property ToolbarImageInsert: TPicture read FToolbarImageInsert write FToolbarImageInsert;
    property ToolbarImageDelete: TPicture read FToolbarImageDelete write FToolbarImageDelete;
    property ToolbarImageCollapse: TPicture read FToolbarImageCollapse write FToolbarImageCollapse;
    property ToolbarImageExpand: TPicture read FToolbarImageExpand write FToolbarImageExpand;
  end;

  TacMarkColumnOptions = class(TPersistent)
  private
    FPKIcon: TPicture;
  public
    constructor Create();
    destructor Destroy(); override;
  published
    property PKIcon: TPicture read FPKIcon write FPKIcon;
  end;

  TacDescriptionColumnOptions = class(TPersistent)
  private
    FFontColor: TColor;
  published
    property FontColor: TColor read FFontColor write FFontColor;
  end;

  TacFieldsListOptions = class(TPersistent)
  private
    FMarkColumnOptions: TacMarkColumnOptions;
    FDescriptionColumnOptions: TacDescriptionColumnOptions;
  public
    constructor Create();
    destructor Destroy(); override;
  published
    property MarkColumnOptions: TacMarkColumnOptions read FMarkColumnOptions write FMarkColumnOptions;
    property DescriptionColumnOptions: TacDescriptionColumnOptions read FDescriptionColumnOptions write FDescriptionColumnOptions;
  end;

  TacValidatePopupMenuEvent = procedure(Sender: TacQueryBuilder;
    AControlOwner: TacQueryBuilderControlOwner; AForControl: TControl;
    APopupMenu: TPopupMenu) of object;

  TacQueryBuilder = class(TCustomPanel)
  private
    FMetadataFilter: TCollection;
    FBorderStyle: TacQBBorderStyle;
    FSplitterHeight: Integer;
    FLinkPainterClassName: string;
    FLinkPainter: TacLinkPainter;
    FBkImagePos: TacBkImagePos;
    FBkImageDarkness: TacBkImageDarkness;
    FBkColor: TColor;
    FOnValidatePopupMenu: TacValidatePopupMenuEvent;
    FAddObjectFormOptions: TacAddObjectFormOptions;
    FTreeOptions: TacTreeOptions;
    FTreeOptionsMetadata: TacTreeOptionsMetadata;
    FQuoteAllIdentifiers: Boolean;
    FSelectListOptions: TacSelectListOptions;
    FFieldsListOptions: TacFieldsListOptions;
    FMetadataProvider: TacBaseMetadataProvider;
    FSyntaxProvider: TacBaseSyntaxProvider;
    FMetadataContainer: TacMetadataContainer;
    FActiveSubQuery: TacSubQuery;
    FSubQueries: TacSubQueries;
    FSQL: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;
    property MetadataProvider: TacBaseMetadataProvider read FMetadataProvider write FMetadataProvider;
    property SyntaxProvider: TacBaseSyntaxProvider read FSyntaxProvider write FSyntaxProvider;
    property MetadataContainer: TacMetadataContainer read FMetadataContainer;
    property ActiveSubQuery: TacSubQuery read FActiveSubQuery;
    property SubQueries: TacSubQueries read FSubQueries;
    property SQL: WideString read FSQL write FSQL;
  published
    property Align;
    property Constraints;
    property HelpContext;
    property TabOrder;
    property OnDragDrop;
    property OnDragOver;
    property OnEnter;
    property OnExit;
    property OnResize;
    property MetadataFilter: TCollection read FMetadataFilter write FMetadataFilter;
    property BorderStyle: TacQBBorderStyle read FBorderStyle write FBorderStyle;
    property SplitterHeight: Integer read FSplitterHeight write FSplitterHeight;
    property LinkPainterClassName: string read FLinkPainterClassName write FLinkPainterClassName;
    property LinkPainter: TacLinkPainter read FLinkPainter write FLinkPainter;
    property BkImagePos: TacBkImagePos read FBkImagePos write FBkImagePos;
    property BkImageDarkness: TacBkImageDarkness read FBkImageDarkness write FBkImageDarkness;
    property BkColor: TColor read FBkColor write FBkColor;
    property OnValidatePopupMenu: TacValidatePopupMenuEvent read FOnValidatePopupMenu write FOnValidatePopupMenu;
    property AddObjectFormOptions: TacAddObjectFormOptions read FAddObjectFormOptions write FAddObjectFormOptions;
    property TreeOptions: TacTreeOptions read FTreeOptions write FTreeOptions;
    property TreeOptionsMetadata: TacTreeOptionsMetadata read FTreeOptionsMetadata write FTreeOptionsMetadata;
    property QuoteAllIdentifiers: Boolean read FQuoteAllIdentifiers write FQuoteAllIdentifiers;
    property SelectListOptions: TacSelectListOptions read FSelectListOptions write FSelectListOptions;
    property FieldsListOptions: TacFieldsListOptions read FFieldsListOptions write FFieldsListOptions;
  end;

  TacBaseSQLBuilder = class(TComponent)
  private
    FOnSQLUpdated: TNotifyEvent;
    FQueryBuilder: TacQueryBuilder;
    FSQL: WideString;
  public
    property SQL: WideString read FSQL write FSQL;
    property OnSQLUpdated: TNotifyEvent read FOnSQLUpdated write FOnSQLUpdated;
    property QueryBuilder: TacQueryBuilder read FQueryBuilder write FQueryBuilder;
  end;

implementation

procedure TacFieldsList.AddField(const AName: WideString; ACaseSensitive: Boolean);
begin
end;

constructor TacMetadataContainer.Create();
begin
  inherited Create();
  FSQLContext := TSQLContext.Create();
end;

destructor TacMetadataContainer.Destroy();
begin
  FSQLContext.Free();
  inherited Destroy();
end;

procedure TacUnionSubQuery.AddObjectAt(AQualifiedName: TSQLQualifiedName; const APoint: TPoint);
begin
end;

constructor TacSubQuery.Create();
begin
  inherited Create();
  FActiveUnionSubquery := TacUnionSubQuery.Create();
end;

destructor TacSubQuery.Destroy();
begin
  FActiveUnionSubquery.Free();
  inherited Destroy();
end;

constructor TacSelectListOptions.Create();
begin
  inherited Create();
  FToolbarImageUp := TPicture.Create();
  FToolbarImageDown := TPicture.Create();
  FToolbarImageInsert := TPicture.Create();
  FToolbarImageDelete := TPicture.Create();
  FToolbarImageCollapse := TPicture.Create();
  FToolbarImageExpand := TPicture.Create();
end;

destructor TacSelectListOptions.Destroy();
begin
  FToolbarImageUp.Free();
  FToolbarImageDown.Free();
  FToolbarImageInsert.Free();
  FToolbarImageDelete.Free();
  FToolbarImageCollapse.Free();
  FToolbarImageExpand.Free();
  inherited Destroy();
end;

constructor TacMarkColumnOptions.Create();
begin
  inherited Create();
  FPKIcon := TPicture.Create();
end;

destructor TacMarkColumnOptions.Destroy();
begin
  FPKIcon.Free();
  inherited Destroy();
end;

constructor TacFieldsListOptions.Create();
begin
  inherited Create();
  FMarkColumnOptions := TacMarkColumnOptions.Create();
  FDescriptionColumnOptions := TacDescriptionColumnOptions.Create();
end;

destructor TacFieldsListOptions.Destroy();
begin
  FMarkColumnOptions.Free();
  FDescriptionColumnOptions.Free();
  inherited Destroy();
end;

constructor TacQueryBuilder.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMetadataFilter := TCollection.Create(TCollectionItem);
  FLinkPainter := TacLinkPainter.Create();
  FAddObjectFormOptions := TacAddObjectFormOptions.Create();
  FTreeOptions := TacTreeOptions.Create();
  FTreeOptionsMetadata := TacTreeOptionsMetadata.Create();
  FSelectListOptions := TacSelectListOptions.Create();
  FFieldsListOptions := TacFieldsListOptions.Create();
  FMetadataContainer := TacMetadataContainer.Create();
  FActiveSubQuery := TacSubQuery.Create();
  FSubQueries := TacSubQueries.Create();
end;

destructor TacQueryBuilder.Destroy();
begin
  FMetadataFilter.Free();
  FLinkPainter.Free();
  FAddObjectFormOptions.Free();
  FTreeOptions.Free();
  FTreeOptionsMetadata.Free();
  FSelectListOptions.Free();
  FFieldsListOptions.Free();
  FMetadataContainer.Free();
  FActiveSubQuery.Free();
  FSubQueries.Free();
  inherited Destroy();
end;

end.

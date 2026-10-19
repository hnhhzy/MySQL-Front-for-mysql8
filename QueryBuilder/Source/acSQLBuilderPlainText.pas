unit acSQLBuilderPlainText;

interface

uses
  SysUtils, Classes, acQBBase;

type
  TacKeywordFormat = (akfUpperCase, akfLowerCase, akfCapitalized);
  TacNewLineAfter = (nlNone, nlAllLogical, nlTopLogical);

  TacWhereFormat = class(TPersistent)
  private
    FNewLineAfter: TacNewLineAfter;
  published
    property NewLineAfter: TacNewLineAfter read FNewLineAfter write FNewLineAfter;
  end;

  TacFromClauseFormat = class(TPersistent)
  private
    FNewLineAfterDatasource: Boolean;
  published
    property NewLineAfterDatasource: Boolean read FNewLineAfterDatasource write FNewLineAfterDatasource;
  end;

  TacQueryFormat = class(TPersistent)
  private
    FNewLineAfterPartKeywords: Boolean;
    FMainPartsFromNewLine: Boolean;
    FWhereFormat: TacWhereFormat;
    FFromClauseFormat: TacFromClauseFormat;
  public
    constructor Create();
    destructor Destroy(); override;
  published
    property NewLineAfterPartKeywords: Boolean read FNewLineAfterPartKeywords write FNewLineAfterPartKeywords;
    property MainPartsFromNewLine: Boolean read FMainPartsFromNewLine write FMainPartsFromNewLine;
    property WhereFormat: TacWhereFormat read FWhereFormat write FWhereFormat;
    property FromClauseFormat: TacFromClauseFormat read FFromClauseFormat write FFromClauseFormat;
  end;

  TacSQLBuilderPlainText = class(TacBaseSQLBuilder)
  private
    FKeywordFormat: TacKeywordFormat;
    FQuoteAllIdentifiers: Boolean;
    FMainQueryFormat: TacQueryFormat;
    FExpressionsSubQueryFormat: TacQueryFormat;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;
  published
    property OnSQLUpdated;
    property QueryBuilder;
    property KeywordFormat: TacKeywordFormat read FKeywordFormat write FKeywordFormat;
    property QuoteAllIdentifiers: Boolean read FQuoteAllIdentifiers write FQuoteAllIdentifiers;
    property MainQueryFormat: TacQueryFormat read FMainQueryFormat write FMainQueryFormat;
    property ExpressionsSubQueryFormat: TacQueryFormat read FExpressionsSubQueryFormat write FExpressionsSubQueryFormat;
  end;

implementation

constructor TacQueryFormat.Create();
begin
  inherited Create();
  FWhereFormat := TacWhereFormat.Create();
  FFromClauseFormat := TacFromClauseFormat.Create();
end;

destructor TacQueryFormat.Destroy();
begin
  FWhereFormat.Free();
  FFromClauseFormat.Free();
  inherited Destroy();
end;

constructor TacSQLBuilderPlainText.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMainQueryFormat := TacQueryFormat.Create();
  FExpressionsSubQueryFormat := TacQueryFormat.Create();
end;

destructor TacSQLBuilderPlainText.Destroy();
begin
  FMainQueryFormat.Free();
  FExpressionsSubQueryFormat.Free();
  inherited Destroy();
end;

end.

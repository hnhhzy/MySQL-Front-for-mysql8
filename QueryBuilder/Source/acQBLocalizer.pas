unit acQBLocalizer;

interface

uses
  SysUtils, Classes;

type
  TacQBLanguage = class(TObject)
  private
    FLanguageName: string;
  public
    property LanguageName: string read FLanguageName write FLanguageName;
  end;

  TacQBLanguageManager = class(TObject)
  private
    FCurrentLanguageIndex: Integer;
    FLanguages: TList;
    function GetLanguage(Index: Integer): TacQBLanguage;
    function GetLanguagesCount(): Integer;
  public
    constructor Create();
    destructor Destroy(); override;
    property CurrentLanguageIndex: Integer read FCurrentLanguageIndex write FCurrentLanguageIndex;
    property Language[Index: Integer]: TacQBLanguage read GetLanguage;
    property LanguagesCount: Integer read GetLanguagesCount;
  end;

  TacQBLocalizer = class(TObject)
  public
    function ReadWideString(const AId: string; const ADefault: WideString = ''): WideString;
  end;

function acQBLanguageManager(): TacQBLanguageManager;
function QueryBuilderLocalizer(): TacQBLocalizer;

implementation

var
  GLanguageManager: TacQBLanguageManager = nil;
  GLocalizer: TacQBLocalizer = nil;

function acQBLanguageManager(): TacQBLanguageManager;
begin
  if not Assigned(GLanguageManager) then
    GLanguageManager := TacQBLanguageManager.Create();
  Result := GLanguageManager;
end;

function QueryBuilderLocalizer(): TacQBLocalizer;
begin
  if not Assigned(GLocalizer) then
    GLocalizer := TacQBLocalizer.Create();
  Result := GLocalizer;
end;

constructor TacQBLanguageManager.Create();
begin
  inherited Create();
  FLanguages := TList.Create();
  FCurrentLanguageIndex := -1;
end;

destructor TacQBLanguageManager.Destroy();
var
  I: Integer;
begin
  for I := 0 to FLanguages.Count - 1 do
    TObject(FLanguages[I]).Free();
  FLanguages.Free();
  inherited Destroy();
end;

function TacQBLanguageManager.GetLanguage(Index: Integer): TacQBLanguage;
begin
  Result := TacQBLanguage(FLanguages[Index]);
end;

function TacQBLanguageManager.GetLanguagesCount(): Integer;
begin
  Result := FLanguages.Count;
end;

function TacQBLocalizer.ReadWideString(const AId: string; const ADefault: WideString): WideString;
begin
  Result := ADefault;
end;

end.

unit acMYSQLSynProvider;

interface

uses
  SysUtils, Classes, acQBBase;

type
  TacMYSQLSyntaxProvider = class(TacBaseSyntaxProvider)
  private
    FServerVersionInt: Integer;
  published
    property ServerVersionInt: Integer read FServerVersionInt write FServerVersionInt;
  end;

implementation

end.

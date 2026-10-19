unit acQBEventMetaProvider;

interface

uses
  SysUtils, Classes, acQBBase;

type
  TacGetSQLFieldNamesEvent = procedure(Sender: TacBaseMetadataProvider; const SQL: WideString; Fields: TacFieldsList) of object;

  TacEventMetadataProvider = class(TacBaseMetadataProvider)
  private
    FOnGetSQLFieldNames: TacGetSQLFieldNamesEvent;
  published
    property OnGetSQLFieldNames: TacGetSQLFieldNamesEvent read FOnGetSQLFieldNames write FOnGetSQLFieldNames;
  end;

implementation

end.

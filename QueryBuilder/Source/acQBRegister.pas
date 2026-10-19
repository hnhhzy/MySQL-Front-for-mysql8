unit acQBRegister;

interface

uses
  Classes, acQBBase, acQBEventMetaProvider, acMYSQLSynProvider, acSQLBuilderPlainText;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Active Query Builder', [
    TacQueryBuilder,
    TacEventMetadataProvider,
    TacMYSQLSyntaxProvider,
    TacSQLBuilderPlainText
  ]);
end;

end.

unit acAST;

interface

uses
  SysUtils, Classes;

type
  TSQLContext = class(TObject)
  end;

  TSQLQualifiedName = class(TObject)
  private
    FSQLContext: TSQLContext;
  public
    constructor Create(ASQLContext: TSQLContext);
    procedure AssignStr(const AName: WideString);
    property SQLContext: TSQLContext read FSQLContext;
  end;

implementation

constructor TSQLQualifiedName.Create(ASQLContext: TSQLContext);
begin
  inherited Create();
  FSQLContext := ASQLContext;
end;

procedure TSQLQualifiedName.AssignStr(const AName: WideString);
begin
end;

end.

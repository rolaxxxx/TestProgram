unit LoginManager;

interface

uses MainProgram;

type
  TLoginManager = class
  public
    function LoginToProgram(UserName: string; Password: string) : boolean;
  end;

implementation

{ TLoginManager }

function TLoginManager.LoginToProgram(UserName: string; Password: string): boolean;
begin
  if (UserName = 'testas') and (Password = '1234') then
  begin
    formMainProgram.Show();
    Result := true;
  end
  else
  begin
    Result := false;
  end;

end;

end.

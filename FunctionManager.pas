unit FunctionManager;

interface

uses ShellAPI, Windows, CurrentDateDisplay, System.Classes, SysUtils;

type
  TFunctionManager = class
  public
    procedure OpenNotePad();
    procedure SpawnDateWindow();
    procedure GenerateAddRandomNumbers(numbersToGenerate: string; numberStringList: TStrings);
  end;

implementation

procedure TFunctionManager.GenerateAddRandomNumbers(numbersToGenerate: string; numberStringList: TStrings);
var
  idx: integer;
  numberCount: integer;
  randomizedNumber: integer;
begin
  numberCount := StrToInt(numbersToGenerate);
  randomize();
  for idx := 0 to numberCount do
  begin
    randomizedNumber := random(1000)+1;
    numberStringList.Add(IntToStr(randomizedNumber));
  end;
end;

procedure TFunctionManager.OpenNotePad;
begin
  ShellExecute(0, 'open', 'notepad.exe', nil, nil, SW_SHOW)
end;

procedure TFunctionManager.SpawnDateWindow;
begin
  formCurrentDateDisplay.Show();
end;

end.

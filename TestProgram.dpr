program TestProgram;

uses
  Vcl.Forms,
  LoginForm in 'LoginForm.pas' {formLoginPage},
  MainProgram in 'MainProgram.pas' {formMainProgram},
  LoginManager in 'LoginManager.pas',
  FunctionManager in 'FunctionManager.pas',
  CurrentDateDisplay in 'CurrentDateDisplay.pas' {formCurrentDateDisplay},
  RandomNumberGenerator in 'RandomNumberGenerator.pas' {formRandomNumberGenerator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformLoginPage, formLoginPage);
  Application.CreateForm(TformMainProgram, formMainProgram);
  Application.CreateForm(TformCurrentDateDisplay, formCurrentDateDisplay);
  Application.CreateForm(TformRandomNumberGenerator, formRandomNumberGenerator);
  Application.Run;
end.

unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, LoginManager;

type
  TformLoginPage = class(TForm)
    editUserName: TEdit;
    editPassword: TEdit;
    btnLoginToProgram: TButton;
    lblUserName: TLabel;
    lblPaaword: TLabel;
    procedure btnLoginToProgramClick(Sender: TObject);
  private
    fIsLoggedIn: boolean;
    fLoginManager: TLoginManager;
    { Private declarations }
  public
    property IsLoggedIn: boolean read fIsLoggedIn write fIsLoggedIn;
    { Public declarations }
  end;

var
  formLoginPage: TformLoginPage;

implementation

{$R *.dfm}

procedure TformLoginPage.btnLoginToProgramClick(Sender: TObject);
begin
  if (fLoginManager.LoginToProgram(editUserName.Text, editPassword.Text)) then
  begin
    FormLoginPage.Hide;
  end
  else
  begin
    Application.MessageBox('UserName or password was incorrect', 'Login failed',
			   MB_OK Or MB_ICONEXCLAMATION)
  end;
end;

end.

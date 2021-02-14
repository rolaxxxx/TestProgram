unit MainProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FunctionManager, RandomNumberGenerator;

type
  TformMainProgram = class(TForm)
    btnDisplayCurrentDate: TButton;
    btnOpenWindowsNotepad: TButton;
    btnGenerateRandomNumbers: TButton;
    lblMainProgramFunctions: TLabel;
    procedure btnOpenWindowsNotepadClick(Sender: TObject);
    procedure btnDisplayCurrentDateClick(Sender: TObject);
    procedure btnGenerateRandomNumbersClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fFunctionManager: TFunctionManager;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainProgram: TformMainProgram;

implementation

{$R *.dfm}

procedure TformMainProgram.btnDisplayCurrentDateClick(Sender: TObject);
begin
  fFunctionManager.SpawnDateWindow;
end;

procedure TformMainProgram.btnOpenWindowsNotepadClick(Sender: TObject);
begin
  fFunctionManager.OpenNotePad;
end;

procedure TformMainProgram.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate()
end;

procedure TformMainProgram.btnGenerateRandomNumbersClick(Sender: TObject);
begin
  formRandomNumberGenerator.Show;
end;

end.

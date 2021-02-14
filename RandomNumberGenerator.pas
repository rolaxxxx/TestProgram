unit RandomNumberGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FunctionManager;

type
  TformRandomNumberGenerator = class(TForm)
    listBoxGeneratedNumbers: TListBox;
    btnGenerateNumbers: TButton;
    editNumbersToGenerate: TEdit;
    lblRandomNumberList: TLabel;
    procedure btnGenerateNumbersClick(Sender: TObject);
    procedure editNumbersToGenerateKeyPress(Sender: TObject; var Key: Char);
  private
    functionManager: TFunctionManager;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRandomNumberGenerator: TformRandomNumberGenerator;

implementation

{$R *.dfm}

procedure TformRandomNumberGenerator.btnGenerateNumbersClick(Sender: TObject);
begin
  listBoxGeneratedNumbers.Clear;
  functionManager.GenerateAddRandomNumbers(editNumbersToGenerate.Text, listBoxGeneratedNumbers.Items);
end;

procedure TformRandomNumberGenerator.editNumbersToGenerateKeyPress(Sender: TObject; var Key: Char);
begin
  if not(charinset(Key, [#8, '0' .. '9', '-']) and not(ord(Key) = VK_RETURN)) and not(Key = ^C) then
  begin
    Application.MessageBox('Invalid key. Only numbers are valid for input', 'Invalid key entered',
			   MB_OK Or MB_ICONEXCLAMATION);
    Key := #0;
  end;

end;

end.

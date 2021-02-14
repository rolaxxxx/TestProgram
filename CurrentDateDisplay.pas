unit CurrentDateDisplay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformCurrentDateDisplay = class(TForm)
    lblCurrentDate: TLabel;
    lblCurrentTime: TLabel;
    timerUpdateDate: TTimer;
    procedure FormShow(Sender: TObject);
    procedure timerUpdateDateTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCurrentDateDisplay: TformCurrentDateDisplay;

implementation

{$R *.dfm}

procedure TformCurrentDateDisplay.FormShow(Sender: TObject);
begin
  timerUpdateDate.Enabled := true;
end;

procedure TformCurrentDateDisplay.timerUpdateDateTimer(Sender: TObject);
var
  today : TDateTime;
begin
  today := Now;
  lblCurrentDate.Caption := DateToStr(today);
  lblCurrentTime.Caption := TimeToStr(today);
end;

end.

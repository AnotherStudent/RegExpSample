program RegExpValidationSample;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRegExpForm, RegExpForm);
  Application.Run;
end.

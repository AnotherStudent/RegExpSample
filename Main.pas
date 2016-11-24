unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.UITypes;

type
  TRegExpForm = class(TForm)
    Input: TLabeledEdit;
    procedure InputChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  RegExpForm: TRegExpForm;

implementation

{$R *.dfm}

uses
  System.RegularExpressions;

function IsValid(S: string): Boolean;
begin
  Result := TRegEx.IsMatch(S, '^[10]{3,4}([^10]+.*|[^10]*)$');
end;

procedure TRegExpForm.FormCreate(Sender: TObject);
begin
  InputChange(Input);
end;

procedure TRegExpForm.InputChange(Sender: TObject);
begin
  if IsValid(TEdit(Sender).Text) then
    TEdit(Sender).Color := TColors.Lightgreen
  else
    TEdit(Sender).Color := TColors.Lightcoral;
end;

end.

program DP;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  DIObjects in 'DIObjects.pas',
  DIInterfaces in 'DIInterfaces.pas',
  AddressValidators in 'AddressValidators.pas',
  AddressEditorForm in 'AddressEditorForm.pas' {AddressEditForm},
  CustomerEditorForm in 'CustomerEditorForm.pas' {CustomerEditForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

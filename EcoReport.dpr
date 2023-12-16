program EcoReport;

uses
  Vcl.Forms,
  View.Default in 'src\View\Default\View.Default.pas' {formDefault},
  Consts.UI in 'src\Consts\Consts.UI.pas',
  Helpers.Ini in 'src\Helpers\Helpers.Ini.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformDefault, formDefault);
  Application.Run;
end.

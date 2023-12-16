program EcoReport;

uses
  Vcl.Forms,
  View.Default in 'src\View\Default\View.Default.pas' {formDefault},
  Consts.UI in 'src\Consts\Consts.UI.pas',
  Helpers.Ini in 'src\Helpers\Helpers.Ini.pas',
  View.Main in 'src\View\Main\View.Main.pas' {formMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.

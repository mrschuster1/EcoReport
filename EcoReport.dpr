program EcoReport;

uses
  Vcl.Forms,
  View.Main in 'src\View\View.Main.pas' {formMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.

unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Default, UCL.Classes,
  UCL.QuickButton, UCL.CaptionBar, Vcl.ExtCtrls, UCL.Panel;

type
  TformMain = class(TformDefault)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

{$R *.dfm}

end.

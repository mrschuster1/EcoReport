unit View.Default;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ucl.form,
  ucl.Classes,
  ucl.QuickButton,
  ucl.CaptionBar,
  Vcl.ExtCtrls,
  ucl.FontIcons,
  ucl.ThemeManager,
  ucl.Panel;

type
  TformDefault = class(TUForm)
    pnlMain: TUPanel;
    cBar: TUCaptionBar;
    btnQuit: TUQuickButton;
    btnMinimize: TUQuickButton;
    btnWindow: TUQuickButton;
    btnTheme: TUQuickButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnThemeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SaveFormPositions;
    procedure LoadFormPositions;
    procedure UpdateWindowButton;
    procedure LoadTheme;
    procedure SwitchTheme;
    procedure SaveTheme;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDefault: TformDefault;

implementation

{$R *.dfm}


uses
  Consts.UI,
  Helpers.Ini;

procedure TformDefault.btnThemeClick(Sender: TObject);
begin
  SwitchTheme
end;

procedure TformDefault.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormPositions;
end;

procedure TformDefault.FormCreate(Sender: TObject);
begin
  LoadFormPositions;
  LoadTheme
end;

procedure TformDefault.SaveFormPositions;
begin
  TIniHelper.SetValue('ui', 'window-state', ord(WindowState));
  TIniHelper.SetValue('ui', 'left', Self.Left);
  TIniHelper.SetValue('ui', 'top', Self.Top);
  TIniHelper.SetValue('ui', 'height', Self.Height);
  TIniHelper.SetValue('ui', 'width', Self.Width);
end;

procedure TformDefault.LoadFormPositions;
begin
  WindowState := TWindowState(TIniHelper.GetValue('ui', 'window-state', 2));
  Self.Left := TIniHelper.GetValue('ui', 'left', Self.Left);
  Self.Top := TIniHelper.GetValue('ui', 'top', Self.Top);
  Self.Height := TIniHelper.GetValue('ui', 'height', Self.Height);
  Self.Width := TIniHelper.GetValue('ui', 'width', Self.Width);

end;

procedure TformDefault.LoadTheme;
begin
  ThemeManager.ThemeType := TUThemeType(TIniHelper.GetValue('ui', 'theme', 2));

  if ThemeManager.ThemeType = ttDark then
    btnTheme.Caption := UI_LIGHT
  else
    btnTheme.Caption := UI_DARK;
end;

procedure TformDefault.SwitchTheme;
begin
  if ThemeManager.ThemeType = ttDark then
  begin
    ThemeManager.ThemeType := ttLight;
    btnTheme.Caption := UI_DARK
  end
  else
  begin
    ThemeManager.ThemeType := ttDark;
    btnTheme.Caption := UI_LIGHT
  end;
  SaveTheme
end;

procedure TformDefault.SaveTheme;
begin
  TIniHelper.SetValue('ui', 'theme', ord(ThemeManager.ThemeType));
end;

procedure TformDefault.UpdateWindowButton;
begin
  if WindowState = TWindowState.wsNormal then
  begin
    btnWindow.Hint := 'Maximizar';
    btnWindow.Caption := UI_MAXIMIZE;
  end
  else
  begin
    btnWindow.Hint := 'Rest. tamanho';
    btnWindow.Caption := UI_RESTORE;
  end;
end;

procedure TformDefault.FormResize(Sender: TObject);
begin
  UpdateWindowButton;
end;

end.

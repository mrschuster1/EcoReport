unit Helpers.Ini;

interface

uses
  inifiles,
  variants,
  ioutils;

/// <summary>
/// Classe auxiliar para intera��o f�cil com arquivos INI.
/// </summary>
/// <remarks>
/// Esta classe fornece m�todos para ler e escrever valores em um arquivo INI,
/// simplificando o processo de manipula��o de configura��es.
/// O arquivo INI � nomeado conforme o execut�vel, com extens�o .ini, e �
/// automaticamente criado no mesmo diret�rio do execut�vel.
/// </remarks>
type
  TIniHelper = class
  private
    /// <summary>
    /// Vari�vel de classe instanciada em Initialization e liberada em Finalization.
    /// </summary>
    class var Ini: TIniFile;

    /// <summary>
    /// Construtor que inicializa o arquivo INI com o mesmo nome do execut�vel
    /// mas com uma extens�o diferente.
    /// </summary>
    /// <remarks>
    /// O arquivo INI � criado usando a fun��o TPath.ChangeExtension com
    /// o nome do execut�vel e a extens�o 'ini'.
    /// </remarks>
    class procedure Create;

    /// <summary>
    /// Destrutor que libera o objeto do arquivo INI da mem�ria.
    /// </summary>
    class procedure Free;

  public
    /// <summary>
    /// Define um valor de string na se��o e campo especificados do arquivo INI.
    /// </summary>
    class procedure SetValue(Section, Field, Value: string); overload;

    /// <summary>
    /// Define um valor inteiro na se��o e campo especificados do arquivo INI.
    /// </summary>
    class procedure SetValue(Section, Field: string; Value: integer); overload;

    /// <summary>
    /// Define um valor booleano na se��o e campo especificados do arquivo INI.
    /// </summary>
    class procedure SetValue(Section, Field: string; Value: boolean); overload;

    /// <summary>
    /// Obt�m um valor de string da se��o e campo especificados do arquivo INI.
    /// </summary>
    class function GetValue(Section, Field, DefaultValue: string)
      : string; overload;

    /// <summary>
    /// Obt�m um valor inteiro da se��o e campo especificados do arquivo INI.
    /// </summary>
    class function GetValue(Section, Field: string; DefaultValue: integer)
      : integer; overload;

    /// <summary>
    /// Obt�m um valor booleano da se��o e campo especificados do arquivo INI.
    /// </summary>
    class function GetValue(Section, Field: string; DefaultValue: boolean)
      : boolean; overload;

    /// <summary>
    /// Remove um valor da se��o e campo especificados do arquivo INI.
    /// </summary>
    class procedure RemoveValue(Section, Field: string);

  end;

implementation

{ TIniHelper }

class procedure TIniHelper.Create;
begin
  Ini := TIniFile.Create(TPath.ChangeExtension(paramstr(0), 'ini'));
end;

class procedure TIniHelper.Free;
begin
  Ini.Free
end;

class function TIniHelper.GetValue(Section, Field: string;
  DefaultValue: boolean): boolean;
begin
  Result := Ini.ReadBool(Section, Field, DefaultValue)
end;

class procedure TIniHelper.RemoveValue(Section, Field: string);
begin
  Ini.DeleteKey(Section, Field)
end;

class procedure TIniHelper.SetValue(Section, Field: string; Value: boolean);
begin
  Ini.WriteBool(Section, Field, Value)
end;

class function TIniHelper.GetValue(Section, Field: string;
  DefaultValue: integer): integer;
begin
  if Ini.ReadInteger(Section, Field, 0) = null then
    SetValue(Section, Field, DefaultValue);
  Result := Ini.ReadInteger(Section, Field, DefaultValue)
end;

class procedure TIniHelper.SetValue(Section, Field: string; Value: integer);
begin
  Ini.WriteInteger(Section, Field, Value)
end;

class function TIniHelper.GetValue(Section, Field, DefaultValue
  : string): string;
begin
  if Ini.ReadString(Section, Field, '') = '' then
    SetValue(Section, Field, DefaultValue);
  Result := Ini.ReadString(Section, Field, DefaultValue);
end;

class procedure TIniHelper.SetValue(Section, Field, Value: string);
begin
  Ini.WriteString(Section, Field, Value);
end;

initialization

TIniHelper.Create;

finalization

TIniHelper.Free;

end.

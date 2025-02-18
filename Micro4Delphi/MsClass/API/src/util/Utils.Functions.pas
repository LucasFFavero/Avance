unit Utils.Functions;

interface

uses
  SysUtils;

type
  TUtilsFuncoes = class
  public
    class function getnumber(x: string): string;
    class function removeaccent(const s: string): string;
  end;

implementation

{ TUtilsFuncoes }

class function TUtilsFuncoes.getnumber(x: string): string;
var
  y: string;
  i: integer;
  c: char;
begin
  if x <> '' then
  begin
    for i := 1 to Length(x) do
    begin
      c := x[i];
      if SysUtils.CharInSet(c, ['0' .. '9']) then
        y := y + c;
    end;
    if trim(y) = '' then
      y := '0';
    result := y;
  end
  else
    result := '0';
end;

class function TUtilsFuncoes.removeaccent(const s: string): string;
var
  i, J: integer;
const
  CA: string = 'ãõáéíóúàèìòùäëïöüâêîôûçÃÕÁÉÍÓÚÀÈÌÒÙÄËÏÖÜÂÊÎÔÛÇ';
  SA: string = 'aoaeiouaeiouaeiouaeioucAOAEIOUAEIOUAEIOUAEIOUC';
begin
  result := '';
  for i := 1 to Length(s) do
  begin
    J := Pos(s[i], CA);
    if J > 0 then
      result := result + SA[J]
    else
      result := result + s[i];
  end;
end;

end.

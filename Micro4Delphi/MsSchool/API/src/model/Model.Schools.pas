unit Model.Schools;

interface

type
  TModelSchools = class
  private
    Fcodigo: integer;
    Fnome: string;
  published
    property codigo: integer read Fcodigo write Fcodigo;
    property nome: string read Fnome write Fnome;
  end;

implementation

end.

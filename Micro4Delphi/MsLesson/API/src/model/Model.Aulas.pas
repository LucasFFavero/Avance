unit Model.Aulas;

interface

type
  TModelAulas = class
  private
    Fcodigo: integer;
    Ftitulo: string;
  published
    property codigo: integer read Fcodigo write Fcodigo;
    property titulo: string read Ftitulo write Ftitulo;
  end;

implementation

end.



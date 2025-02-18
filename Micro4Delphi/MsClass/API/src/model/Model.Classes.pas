unit Model.Classes;

interface

type
  TModelClasses = class
  private
    Fcodigo: integer;
    Fdescricao: string;
  published
    property codigo: integer read Fcodigo write Fcodigo;
    property descricao: string read Fdescricao write Fdescricao;
  end;

implementation

end.

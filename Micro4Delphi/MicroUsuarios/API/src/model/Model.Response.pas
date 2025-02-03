unit Model.Response;

interface

type
  TModelResponse = class
  private
    Fstatus: integer;
    Fmensagem: string;
  published
    property status: integer read Fstatus write Fstatus;
    property mensagem: string read Fmensagem write Fmensagem;
  end;

implementation

end.


